import 'dart:async';

import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/core/query_core.dart';
import 'package:be_sharp/model/firestore_model/problem/read/read_problem.dart';
import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/model/firestore_model/public_user/write/write_public_user.dart';
import 'package:be_sharp/model/view_model_state/check_state/check_state.dart';
import 'package:be_sharp/provider/user_provider.dart';
import 'package:be_sharp/repository/firestore_repository.dart';
import 'package:be_sharp/typedefs/firestore_typedef.dart';
import 'package:be_sharp/view/root_page/create_user_answer_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/route_manager.dart';

class CheckViewModel extends AutoDisposeAsyncNotifier<CheckState> {
  @override
  FutureOr<CheckState> build() async {
    return _fetchData();
  }

  Future<CheckState> _fetchData() async {
    final needsAgreeToTerms = checkNeedsAgreeToTerms();
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return CheckState(
          needsAgreeToTerms: needsAgreeToTerms,
          needsSignup: true,
          needsEditUser: false);
    } else {
      final needsEditUser = await checkNeedsEditUser(user.uid);
      return CheckState(
          needsAgreeToTerms: needsAgreeToTerms,
          needsSignup: false,
          needsEditUser: needsEditUser);
    }
  }

  FirestoreRepository get repository => FirestoreRepository();

  bool checkNeedsAgreeToTerms() {
    return false;
  }

  Future<bool> checkNeedsEditUser(String uid) async {
    final docRef = DocRefCore.user(uid);
    final result = await docRef.get();
    final readData = result.data();
    if (result.exists && readData != null) {
      final readUser = ReadPublicUser.fromJson(readData);
      return readUser.needsEdit();
    } else {
      final writeData = WritePublicUser.instance(uid).toJson();
      await docRef.set(writeData);
      return true;
    }
  }

  Future<void> refetchUser(User user) async {
    final stateValue = state.value;
    if (stateValue == null) return;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final result = stateValue.copyWith(
          needsSignup: false,
          needsEditUser: await checkNeedsEditUser(user.uid));
      return result;
    });
  }

  Future<void> onUserUpdateSuccess(String uid) async {
    final stateValue = state.value;
    if (stateValue == null) return;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final result =
          stateValue.copyWith(needsEditUser: await checkNeedsEditUser(uid));
      return result;
    });
  }
  void toProblemPage() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final uid = ref.read(userProvider)?.uid;
      if (uid == null) return;
      final query = QueryCore.latestProblem();
      final result = await repository.getDocs(query);
      await result.when(success: (docs) async {
        if (docs.isEmpty) return;
        final problemDoc = docs.first;
        await _onFetchProblemSuccess(uid,problemDoc);
      }, failure: () {});
    });
  }

  Future<void> _onFetchProblemSuccess(String uid, QDoc problemDoc) async {
    final problem = ReadProblem.fromJson(problemDoc.data());
    if (!problem.isInTimeLimit()) return;
    final problemId = problem.problemId;
    final docRef = DocRefCore.userAnswer(uid, problemId);
    final result = await repository.getDoc(docRef);
    result.when(success: (doc) {
      final isNoAnswer = !doc.exists;
      if (isNoAnswer) {
        final path = CreateUserAnswerPage.generatePath(problemId);
        Get.toNamed(path);
      }
    }, failure: () {});
  }
}

final checkProvider =
    AsyncNotifierProvider.autoDispose<CheckViewModel, CheckState>(
        () => CheckViewModel());
