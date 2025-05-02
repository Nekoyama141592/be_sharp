import 'dart:async';

import 'package:be_sharp/model/view_model_state/abstract/user_and_image_state.dart';
import 'package:be_sharp/provider/cache_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:be_sharp/provider/view_model/check/check_view_model.dart';
import 'package:be_sharp/extensions/prefs_extension.dart';

class PublicUserProvider extends AutoDisposeAsyncNotifier<UserAndImageState> {
  @override
  FutureOr<UserAndImageState> build() async {
    final user = ref.read(checkProvider).value?.user;
    if (user == null) {
      return UserAndImageState(user: user, image: null);
    }
    final image = await ref
        .read(prefsProvider)
        .getS3Image(user.imageCacheKey(), user.imageValue());
    return UserAndImageState(user: user, image: image);
  }
}

final publicUserProvider =
    AsyncNotifierProvider.autoDispose<PublicUserProvider, UserAndImageState>(
        () => PublicUserProvider());
