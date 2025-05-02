import 'package:be_sharp/model/view_model_state/abstract/user_and_image_state.dart';
import 'package:be_sharp/provider/overrides/prefs_provider.dart';
import 'package:be_sharp/provider/view_model/check/check_view_model.dart';
import 'package:be_sharp/extensions/prefs_extension.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'original_drawer_view_model.g.dart';

@riverpod
class OriginalDrawerViewModel extends _$OriginalDrawerViewModel {
  @override
  FutureOr<UserAndImageState> build() async {
    final user = ref.read(checkViewModelProvider).value?.user;
    if (user == null) {
      return UserAndImageState(user: user, image: null);
    }
    final image = await ref
        .read(prefsProvider)
        .getS3Image(user.imageCacheKey(), user.imageValue());
    return UserAndImageState(user: user, image: image);
  }
}

final originalDrawerProvider = AsyncNotifierProvider.autoDispose<
    OriginalDrawerViewModel,
    UserAndImageState>(() => OriginalDrawerViewModel());
