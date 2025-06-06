import 'package:be_sharp/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/user_case/file/file_usecase.dart';
import 'package:be_sharp/user_case/home/home_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_use_case_provider.g.dart';

@riverpod
HomeUseCase homeUseCase(Ref ref) => HomeUseCase(repository: ref.watch(databaseRepositoryProvider),fileUseCase: ref.watch(fileUseCaseProvider));