import 'dart:async';

import 'package:be_sharp/domain/entity/database/problem/problem_entity.dart';
import 'package:be_sharp/domain/entity/database/user_answer/user_answer_entity.dart';
import 'package:be_sharp/infrastructure/constants/limit_constant.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/mute_user/mute_user_model.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/private_user/private_user_model.dart';
import 'package:be_sharp/domain/entity/database/public_user/public_user_entity.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/public_user/public_user_model.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/user_answer/user_answer_model.dart';
import 'package:be_sharp/infrastructure/model/firestore_model/verified_purchase/verified_purchase_model.dart';
import 'package:be_sharp/domain/entity/database/verified_purchase/verified_purchase_entity.dart';
import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:be_sharp/domain/repository_interface/database_repository_interface.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

typedef QSnapshot = QuerySnapshot<Map<String, dynamic>>;
typedef QDoc = QueryDocumentSnapshot<Map<String, dynamic>>;
typedef Doc = DocumentSnapshot<Map<String, dynamic>>;

typedef FutureQSnapshot = Future<QSnapshot>;
typedef FutureDoc = Future<Doc>;

typedef DocRef = DocumentReference<Map<String, dynamic>>;
typedef ColRef = CollectionReference<Map<String, dynamic>>;

typedef MapQuery = Query<Map<String, dynamic>>;

class DatabaseRepository implements DatabaseRepositoryInterface {
  DatabaseRepository(this._instance);
  final FirebaseFirestore _instance;

  DocRef _userDocRef(String uid) => _usersColRef().doc(uid);
  DocRef _userAnswerDocRef(String uid, String problemId) =>
      _userAnswersColRef(uid).doc(problemId);
  DocRef _muteUserDocRef(String uid, String muteUid) =>
      _muteUsersColRef(uid).doc(muteUid);
  DocRef _privateUserDocRef(String uid) => _privateUsersColRef().doc(uid);
  DocRef _problemDocRef(String problemId) => _problemsColRef().doc(problemId);
  // 基本
  MapQuery _usersQuery(List<String> uids) =>
      _usersColRef().where('uid', whereIn: uids);
  MapQuery _latestProblemQuery() =>
      _problemsColRef().orderBy('createdAt', descending: true).limit(1);
  MapQuery _latestUserAnswerQuery(String uid, String problemId) =>
      _userAnswersColRef(uid).where('problemId', isEqualTo: problemId).limit(1);
  MapQuery _userAnswersQuery(String problemId) => _instance
      .collectionGroup('userAnswers')
      .where('problemId', isEqualTo: problemId);
  MapQuery _correctUserAnswersQuery(String problemId, List<String> answers) =>
      _instance
          .collectionGroup('userAnswers')
          .where('problemId', isEqualTo: problemId)
          .where('answer', whereIn: answers)
          .orderBy('createdAt', descending: false)
          .limit(LimitConstant.whereInLimit);
  MapQuery _rankingQuery(
          String problemId, List<String> answers, Timestamp myCreatedAt) =>
      _instance
          .collectionGroup('userAnswers')
          .where('problemId', isEqualTo: problemId)
          .where('answer', whereIn: answers)
          .where('createdAt', isLessThanOrEqualTo: myCreatedAt);
  MapQuery _muteUsers({required String uid, List<String>? uids}) {
    final baseQuery = _muteUsersColRef(uid);
    return uids == null ? baseQuery : baseQuery.where('muteUid', whereIn: uids);
  }

  ColRef _usersColRef() => _instance.collection('users');
  ColRef _userAnswersColRef(String uid) =>
      _instance.collection('users/$uid/userAnswers');
  ColRef _muteUsersColRef(String uid) =>
      _instance.collection('users/$uid/muteUsers');
  ColRef _privateUsersColRef() => _instance.collection('privateUsers');
  ColRef _verifiedPurchasesColRef(String uid) =>
      _instance.collection('privateUsers/$uid/verifiedPurchases');
  ColRef _problemsColRef() => _instance.collection('problems');
  Future<void> _createDoc(DocRef ref, Map<String, dynamic> json) =>
      ref.set(json);
  Future<void> _updateDoc(DocRef ref, Map<String, dynamic> json) =>
      ref.update(json);
  Future<void> _deleteDoc(DocRef ref) => ref.delete();
  FutureDoc _getDoc(DocRef ref) => ref.get();

  Future<PublicUserEntity?> getPublicUser(String uid) async {
    try {
      final doc = await _userDocRef(uid).get();
      final docData = doc.data();
      if (docData == null) return null;
      return PublicUserEntity.fromJson(docData);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<PrivateUserModel?> getPrivateUser(String uid) async {
    try {
      final doc = await _privateUsersColRef().doc(uid).get();
      final docData = doc.data();
      if (docData == null) return null;
      return PrivateUserModel.fromJson(docData);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  FutureQSnapshot _getDocs(MapQuery query) => query.get();
  // write
  FutureResult<bool> createDoc(DocRef ref, Map<String, dynamic> json) async {
    try {
      await _createDoc(ref, json);
      return const Result.success(true);
    } catch (e) {
      debugPrint(e.toString());
      return Result.failure('ドキュメントの作成に失敗しました: ${e.toString()}');
    }
  }

  FutureResult<bool> createPrivateUser(String uid, String? token) {
    final privateUser =
        PrivateUserModel.withServerTimestamp(uid, fcmToken: token);
    final docRef = _privateUserDocRef(uid);
    final data = privateUser.toJson();
    return createDoc(docRef, data);
  }

  FutureResult<bool> updateDoc(DocRef ref, Map<String, dynamic> json) async {
    try {
      await _updateDoc(ref, json);
      return const Result.success(true);
    } catch (e) {
      debugPrint(e.toString());
      return Result.failure('ドキュメントの更新に失敗しました: ${e.toString()}');
    }
  }

  FutureResult<bool> updateToken(String uid, String token) {
    final docRef = _privateUserDocRef(uid);
    final data = {'fcmToken': token};
    return updateDoc(docRef, data);
  }

  FutureResult<bool> deleteDoc(DocRef ref) async {
    try {
      await _deleteDoc(ref);
      return const Result.success(true);
    } catch (e) {
      debugPrint(e.toString());
      return Result.failure('ドキュメントの削除に失敗しました: ${e.toString()}');
    }
  }

  FutureResult<bool> deleteUser(String uid) {
    final docRef = _userDocRef(uid);
    return deleteDoc(docRef);
  }

  FutureResult<Doc> getDoc(DocRef ref) async {
    try {
      final Doc doc = await _getDoc(ref);
      return Result.success(doc);
    } catch (e) {
      return Result.failure('ドキュメントの取得に失敗しました: ${e.toString()}');
    }
  }

  FutureResult<List<QDoc>> getDocs(MapQuery query) async {
    try {
      final qSnapshot = await _getDocs(query);
      final qDocs = qSnapshot.docs;
      return Result.success(qDocs);
    } catch (e) {
      return Result.failure('ドキュメントリストの取得に失敗しました: ${e.toString()}');
    }
  }

  @override
  Future<List<PublicUserEntity>> getUsers(List<String> uids) async {
    try {
      if (uids.isEmpty) return [];
      final usersQshot = await _usersQuery(uids).get();
      final users = usersQshot.docs
          .map((e) => PublicUserEntity.fromJson(e.data()))
          .toList();
      return users;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  Future<List<VerifiedPurchaseEntity>> getVerifiedPurchases(String? uid) async {
    try {
      if (uid == null) return [];
      final colRef = _verifiedPurchasesColRef(uid);
      final qshot = await colRef.get();
      final docs = qshot.docs;
      final verifiedPurchases =
          docs.map((e) => VerifiedPurchaseModel.fromJson(e.data())).toList();
      final validPurchases =
          verifiedPurchases.where((e) => e.isValid()).toList();
      final results = validPurchases
          .map((e) => VerifiedPurchaseEntity.fromModel(e))
          .toList();
      return results;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  @override
  Future<List<String>> getMuteUsers(String? uid, List<String> muteUids) async {
    try {
      if (uid == null || muteUids.isEmpty) return [];
      final query = _muteUsers(uid: uid, uids: muteUids);
      final usersQshot = await query.get();
      final docs = usersQshot.docs;
      return docs.map((e) => MuteUserModel.fromJson(e.data()).muteUid).toList();
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  @override
  Future<int> getUserCount(String problemId) async {
    final query = _userAnswersQuery(problemId);
    final qshot = await query.count().get();
    final result = qshot.count ?? 0;
    return result;
  }

  Future<int> getRank(String problemId, List<String> answers,
      UserAnswerEntity userAnswer) async {
    final createdAt = Timestamp.fromDate(userAnswer.createdAt!);
    final query = _rankingQuery(problemId, answers, createdAt);
    final qshot = await query.count().get();
    final result = qshot.count ?? 0;
    return result;
  }

  Future<PublicUserEntity?> createPublicUser(String uid) async {
    try {
      final docRef = _userDocRef(uid);
      final writeUser = PublicUserModel.withServerTimestamp(uid);
      final writeData = writeUser.toJson();
      await _createDoc(docRef, writeData);
      return getPublicUser(uid);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<ProblemEntity?> getProblem(String problemId) async {
    try {
      final docRef = _problemDocRef(problemId);
      final doc = await _getDoc(docRef);
      return ProblemEntity.fromJson(doc.data()!);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  FutureResult<bool> createAnswer(
      String uid, String problemId, String answer) async {
    final docRef = _userAnswerDocRef(uid, problemId);
    final json = UserAnswerModel.withServerTimestamp(
            answer: answer, problemId: problemId, uid: uid)
        .toJson();
    return createDoc(docRef, json);
  }

  Future<ProblemEntity?> fetchLatestProblem() async {
    try {
      final query = _latestProblemQuery();
      final qshot = await query.get();
      final docs = qshot.docs;
      if (docs.isEmpty) return null;
      return ProblemEntity.fromJson(docs.first.data());
    } catch(e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<UserAnswerEntity?> fetchLatestUserAnswer(
      String uid, String problemId) async {
    final query = _latestUserAnswerQuery(uid, problemId);
    final qshot = await query.get();
    final docs = qshot.docs;
    if (docs.isEmpty) return null;
    return UserAnswerEntity.fromJson(docs.first.data());
  }

  Future<List<String>> _fetchMuteUids(String? uid) async {
    if (uid == null) return [];
    final query = _muteUsers(uid: uid);
    final qshot = await _getDocs(query);
    final docs = qshot.docs;
    return docs.map((e) => MuteUserModel.fromJson(e.data()).muteUid).toList();
  }

  Future<List<PublicUserEntity>> fetchMutePublicUsers(String? uid) async {
    final uids = await _fetchMuteUids(uid);
    if (uids.isEmpty) return [];
    final chunks = <Future<List<PublicUserEntity>>>[];
    const whereInLimit = LimitConstant.whereInLimit;
    for (var i = 0; i < uids.length; i += whereInLimit) {
      final chunk = uids.sublist(
          i, i + whereInLimit > uids.length ? uids.length : i + whereInLimit);
      final query = _usersQuery(chunk);
      final qshot = _getDocs(query).then((snapshot) => snapshot.docs
          .map((e) => PublicUserEntity.fromJson(e.data()))
          .toList());
      chunks.add(qshot);
    }
    final results = await Future.wait(chunks);
    return results.expand((x) => x).toList();
  }

  FutureResult<bool> muteUser(String uid, String muteUid) {
    final docRef = _muteUserDocRef(uid, muteUid);
    final json = MuteUserModel.withServerTimestamp(muteUid).toJson();
    return createDoc(docRef, json);
  }

  FutureResult<bool> unMute(String uid, String muteUid) {
    final docRef = _muteUserDocRef(uid, muteUid);
    return deleteDoc(docRef);
  }

  Future<List<UserAnswerEntity>> fetchCorrectUserAnswers(
      String problemId, List<String> answers) async {
    try {
      final query = _correctUserAnswersQuery(problemId, answers);
      final qshot = await _getDocs(query);
      final entities =
          qshot.docs.map((e) => UserAnswerEntity.fromJson(e.data())).toList();
      return entities;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  Future<Doc?> getUserAnswerDoc(String uid, String problemId) async {
    try {
      final docRef = _userAnswerDocRef(uid, problemId);
      return _getDoc(docRef);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> latestPromblemSnapshots() {
    return _latestProblemQuery().snapshots();
  }
}
