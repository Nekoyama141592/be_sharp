import 'dart:async';
import 'dart:typed_data';

import 'package:be_sharp/core/aws_s3_core.dart';
import 'package:be_sharp/extensions/prefs_extension.dart';
import 'package:be_sharp/provider/cache_provider.dart';
import 'package:be_sharp/provider/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class HomeViewModel extends AutoDisposeAsyncNotifier<Uint8List?> {
  @override
  FutureOr<Uint8List?> build() async {
    return _fetchData();
  }

  Future<Uint8List?> _fetchData() async {
    final uid = ref.read(userProvider)!.uid;
    final object = AWSS3Core.profileObject(uid);
    final image = await ref.read(prefsProvider).getS3Image(object);
    return image;
  }

}

final homeProvider =
    AsyncNotifierProvider.autoDispose<HomeViewModel, Uint8List?>(
        () => HomeViewModel());
