import 'package:be_sharp/core/provider/infrastructure/firebase/firebase_functions/firebase_functions_provider.dart';
import 'package:be_sharp/infrastructure/repository/api_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'cloud_functions_repository_provider.g.dart';

@riverpod
ApiRepository cloudFunctionsRepository(Ref ref) =>
    ApiRepository(ref.watch(firebaseFunctionsProvider));
