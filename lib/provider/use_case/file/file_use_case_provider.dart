import 'package:be_sharp/provider/overrides/prefs_provider.dart';
import 'package:be_sharp/provider/repository/cloud_functions/cloud_functions_repository_provider.dart';
import 'package:be_sharp/use_case/file/file_use_case.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'file_use_case_provider.g.dart';

@riverpod
FileUseCase fileUseCase(Ref ref) => FileUseCase(
  prefs: ref.watch(prefsProvider),
  repository: ref.watch(cloudFunctionsRepositoryProvider),
);