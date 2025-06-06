import 'package:be_sharp/model/firestore_model/private_user/private_user.dart';
import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/repository/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:be_sharp/typedefs/firestore_typedef.dart';

class DatabaseRepository {
  DatabaseRepository(this._instance);
  final FirebaseFirestore _instance;
  static const int oneTimeReadCount = whereInLimit;
  static const int whereInLimit = 10;
  DocRef _userDocRef(String uid) => _usersColRef().doc(uid);
  DocRef _userAnswerDocRef(String uid, String problemId) =>
      _userAnswersColRef(uid).doc(problemId);
  DocRef _muteUserDocRef(String uid, String muteUid) =>
      _muteUsersColRef(uid).doc(muteUid);
  DocRef _privateUserDocRef(String uid) => _privateUsersColRef().doc(uid);
  DocRef _problemDocRef(String problemId) =>
      _problemsColRef().doc(problemId);
  // 基本
  MapQuery _usersQuery(List<String> uids) =>
      _usersColRef().where('uid', whereIn: uids);
  MapQuery _latestProblemQuery() =>
      _problemsColRef().orderBy('createdAt', descending: true).limit(1);
  MapQuery _latestUserAnswerQuery(String uid, String problemId) =>
      _userAnswersColRef(uid)
          .where('problemId', isEqualTo: problemId)
          .limit(1);
  MapQuery _userAnswersQuery(String problemId) => _instance
      .collectionGroup('userAnswers')
      .where('problemId', isEqualTo: problemId);
  MapQuery _correctUserAnswersQuery(String problemId, List<String> answers) =>
      _instance
          .collectionGroup('userAnswers')
          .where('problemId', isEqualTo: problemId)
          .where('answer', whereIn: answers)
          .orderBy('createdAt', descending: false)
          .limit(whereInLimit);
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
  Future<void> _createDoc(DocRef ref, Map<String,dynamic> json) => ref.set(json);
  Future<void> _updateDoc(DocRef ref, Map<String,dynamic> json) => ref.update(json);
  Future<void> _deleteDoc(DocRef ref) => ref.delete();
  FutureDoc _getDoc(DocRef ref) => ref.get();

  Future<ReadPublicUser?> getPublicUser(String uid) async {
    try {
      final doc = await _userDocRef(uid).get();
      final docData = doc.data();
      if (docData == null) return null;
      return ReadPublicUser.fromJson(docData);
    } catch(e) {
      debugPrint(e.toString());
      return null;
    }
  }
  Future<PrivateUser?> getPrivateUser(String uid) async {
    try {
      final doc = await _privateUsersColRef().doc(uid).get();
      final docData = doc.data();
      if (docData == null) return null;
      return PrivateUser.fromJson(docData);
    } catch(e) {
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
      return const Result.failure();
    }
  }
  FutureResult<bool> createPrivateUser(String uid,String? token) {
    final privateUser = PrivateUser(
          fcmToken: token ?? '', uid: uid, createdAt: FieldValue.serverTimestamp());
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
      return const Result.failure();
    }
  }
  FutureResult<bool> updateToken(String uid,String token) {
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
      return const Result.failure();
    }
  }

  FutureResult<Doc> getDoc(DocRef ref) async {
    try {
      final Doc doc = await _getDoc(ref);
      return Result.success(doc);
    } catch (e) {
      return const Result.failure();
    }
  }

  FutureResult<List<QDoc>> getDocs(MapQuery query) async {
    try {
      final qSnapshot = await _getDocs(query);
      final qDocs = qSnapshot.docs;
      return Result.success(qDocs);
    } catch (e) {
      return const Result.failure();
    }
  }
}
