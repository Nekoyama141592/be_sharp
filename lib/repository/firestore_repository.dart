import 'package:be_sharp/repository/result.dart';
import 'package:flutter/foundation.dart';
import 'package:be_sharp/infrastructure/firestore/firestore_client.dart';
import 'package:be_sharp/typedefs/firestore_typedef.dart';

class FirestoreRepository {
  FirestoreClient get client => FirestoreClient();

  // write
  FutureResult<bool> createDoc(DocRef ref, Map<String, dynamic> json) async {
    try {
      await client.createDoc(ref, json);
      return const Result.success(true);
    } catch (e) {
      debugPrint(e.toString());
      return const Result.failure();
    }
  }

  FutureResult<bool> updateDoc(DocRef ref, Map<String, dynamic> json) async {
    try {
      await client.updateDoc(ref, json);
      return const Result.success(true);
    } catch (e) {
      debugPrint(e.toString());
      return const Result.failure();
    }
  }

  FutureResult<bool> deleteDoc(DocRef ref) async {
    try {
      await client.deleteDoc(ref);
      return const Result.success(true);
    } catch (e) {
      debugPrint(e.toString());
      return const Result.failure();
    }
  }

  FutureResult<Doc> getDoc(DocRef ref) async {
    final client = FirestoreClient();
    try {
      final Doc doc = await client.getDoc(ref);
      return Result.success(doc);
    } catch (e) {
      return const Result.failure();
    }
  }

  FutureResult<List<QDoc>> getDocs(MapQuery query) async {
    final client = FirestoreClient();
    try {
      final qSnapshot = await client.getDocs(query);
      final qDocs = qSnapshot.docs;
      return Result.success(qDocs);
    } catch (e) {
      return const Result.failure();
    }
  }
}
