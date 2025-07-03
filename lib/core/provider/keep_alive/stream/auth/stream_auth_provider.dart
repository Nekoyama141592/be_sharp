import 'dart:async';

import 'package:be_sharp/core/provider/keep_alive/infrastructure/firebase/firebase_auth/firebase_auth_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'stream_auth_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<String?> streamAuthUid(Ref ref) {
  final userStream = ref.watch(firebaseAuthProvider).authStateChanges();
  return userStream.map((user) => user?.uid);
}

@Riverpod(keepAlive: true)
Stream<User?> streamAuth(Ref ref) {
  return ref.watch(firebaseAuthProvider).authStateChanges();
}
