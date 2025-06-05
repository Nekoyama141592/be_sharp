import 'package:be_sharp/provider/client/firebase_functions/firebase_functions_provider.dart';
import 'package:be_sharp/repository/cloud_functions_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'cloud_functions_repository_provider.g.dart';

@riverpod
CloudFunctionsRepository cloudFunctionsRepository(Ref ref) => CloudFunctionsRepository(ref.watch(firebaseFunctionsProvider));