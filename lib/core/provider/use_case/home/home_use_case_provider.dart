import 'package:be_sharp/core/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/core/provider/use_case/file/file_use_case_provider.dart';
import 'package:be_sharp/application/use_case/home_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_use_case_provider.g.dart';

@riverpod
HomeUseCase homeUseCase(Ref ref) => HomeUseCase(
    repository: ref.watch(databaseRepositoryProvider),
    fileUseCase: ref.watch(fileUseCaseProvider));
