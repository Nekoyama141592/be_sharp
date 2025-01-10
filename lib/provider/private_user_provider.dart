import 'dart:async';

import 'package:be_sharp/core/doc_ref_core.dart';
import 'package:be_sharp/model/firestore_model/private_user/private_user.dart';
import 'package:be_sharp/provider/user_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrivateUserProvider extends AsyncNotifier<PrivateUser> {
  @override
  FutureOr<PrivateUser> build() async {
    return _fetchData();
  }

  Future<PrivateUser> _fetchData() async {
    final uid = ref.read(userProvider)!.uid;
    final docRef = DocRefCore.privateUser(uid);
    final doc = await docRef.get();
    final token = await _getToken();
    if (doc.exists) {
      final privateUser = PrivateUser.fromJson(doc.data()!);
      if (token != null && token != privateUser.fcmToken) {
        await doc.reference.update({'fcmToken': token});
      }
      return privateUser;
    } else {
      final privateUser = PrivateUser(
          fcmToken: token ?? '', uid: uid, createdAt: Timestamp.now());
      final data = privateUser.toJson();
      await docRef.set(data);
      return privateUser;
    }
  }

  static Future<String?> _getToken() async {
    try {
      String? token;
      final messaging = FirebaseMessaging.instance;
      final response = await messaging.requestPermission();
      if (response.authorizationStatus == AuthorizationStatus.authorized) {
        token = await messaging.getToken();
      }
      return token;
    } catch (e) {
      return null;
    }
  }
}

final privateUserProvider =
    AsyncNotifierProvider<PrivateUserProvider, PrivateUser>(
        () => PrivateUserProvider());
