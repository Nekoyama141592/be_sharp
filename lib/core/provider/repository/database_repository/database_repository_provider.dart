import 'package:be_sharp/core/provider/infrastructure/firebase/firebase_firestore/firebase_firestore_provider.dart';
import 'package:be_sharp/infrastructure/repository/database_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'database_repository_provider.g.dart';

@riverpod
DatabaseRepository databaseRepository(Ref ref) =>
    DatabaseRepository(ref.watch(firebaseFirestoreProvider));
