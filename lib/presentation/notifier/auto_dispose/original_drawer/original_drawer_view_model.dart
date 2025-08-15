import 'package:be_sharp/presentation/state/view_model_state/common/user_and_image/user_and_image_state.dart';
import 'package:be_sharp/presentation/notifier/auto_dispose/check/check_view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'original_drawer_view_model.g.dart';

@riverpod
class OriginalDrawerViewModel extends _$OriginalDrawerViewModel {
  @override
  FutureOr<UserAndImageState> build() async {
    final user = ref.read(checkViewModelProvider).value?.user;
    if (user == null) {
      return UserAndImageState(user: user);
    }
    return UserAndImageState(user: user);
  }
}

final originalDrawerProvider = AsyncNotifierProvider.autoDispose<
    OriginalDrawerViewModel,
    UserAndImageState>(() => OriginalDrawerViewModel());
