import 'package:be_sharp/repository/result.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:be_sharp/typedefs/firestore_typedef.dart';

class DatabaseRepository {
  DatabaseRepository(this.client);
  final FirebaseFirestore client;
  Future<void> _createDoc(DocRef ref, Map<String,dynamic> json) => ref.set(json);
  Future<void> _updateDoc(DocRef ref, Map<String,dynamic> json) => ref.update(json);
  Future<void> _deleteDoc(DocRef ref) => ref.delete();
  FutureDoc _getDoc(DocRef ref) => ref.get();
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

  FutureResult<bool> updateDoc(DocRef ref, Map<String, dynamic> json) async {
    try {
      await _updateDoc(ref, json);
      return const Result.success(true);
    } catch (e) {
      debugPrint(e.toString());
      return const Result.failure();
    }
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
