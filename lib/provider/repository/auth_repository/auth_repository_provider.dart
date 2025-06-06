import 'package:be_sharp/provider/client/firebase_auth/firebase_auth_provider.dart';
import 'package:be_sharp/repository/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_repository_provider.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) => AuthRepository(ref.watch(firebaseAuthProvider));