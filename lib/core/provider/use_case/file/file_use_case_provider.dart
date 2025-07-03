import 'package:be_sharp/core/provider/keep_alive/overrides/prefs/prefs_provider.dart';
import 'package:be_sharp/core/provider/repository/cloud_functions/cloud_functions_repository_provider.dart';
import 'package:be_sharp/application/use_case/file_use_case.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'file_use_case_provider.g.dart';

@riverpod
FileUseCase fileUseCase(Ref ref) => FileUseCase(
      prefs: ref.watch(prefsProvider),
      repository: ref.watch(cloudFunctionsRepositoryProvider),
    );
