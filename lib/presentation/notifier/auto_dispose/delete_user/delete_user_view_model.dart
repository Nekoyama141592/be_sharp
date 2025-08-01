import 'package:be_sharp/core/util/credential_util.dart';
import 'package:be_sharp/core/provider/repository/auth_repository/auth_repository_provider.dart';
import 'package:be_sharp/core/provider/repository/database_repository/database_repository_provider.dart';
import 'package:be_sharp/core/provider/stream/auth/stream_auth_provider.dart';
import 'package:be_sharp/infrastructure/repository/auth_repository.dart';
import 'package:be_sharp/infrastructure/repository/database_repository.dart';
import 'package:be_sharp/presentation/util/toast_ui_util.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_user_view_model.g.dart';

enum DeleteUserState {
  initial,
  authenticating,
  authenticated,
  deleting,
  deleted,
  error
}

class DeleteUserViewModelState {
  final User? user;
  final DeleteUserState state;
  final String? errorMessage;
  final bool showConfirmDialog;

  DeleteUserViewModelState({
    this.user,
    this.state = DeleteUserState.initial,
    this.errorMessage,
    this.showConfirmDialog = false,
  });

  DeleteUserViewModelState copyWith({
    User? user,
    DeleteUserState? state,
    String? errorMessage,
    bool? showConfirmDialog,
  }) {
    return DeleteUserViewModelState(
      user: user ?? this.user,
      state: state ?? this.state,
      errorMessage: errorMessage,
      showConfirmDialog: showConfirmDialog ?? this.showConfirmDialog,
    );
  }
}

@riverpod
class DeleteUserViewModel
    extends AutoDisposeNotifier<DeleteUserViewModelState> {
  @override
  DeleteUserViewModelState build() {
    final user = ref.watch(streamAuthProvider).value;
    return DeleteUserViewModelState(user: user);
  }

  AuthRepository get authRepository => ref.read(authRepositoryProvider);
  DatabaseRepository get _databaseRepository =>
      ref.read(databaseRepositoryProvider);

  Future<void> onGoogleSignInButtonPressed() async {
    final credential = await CredentialUtil.googleCredential();
    await _reauthenticateToDelete(credential);
  }

  Future<void> onAppleSignInButtonPressed() async {
    final credential = await CredentialUtil.appleCredential();
    await _reauthenticateToDelete(credential);
  }

  Future<void> _reauthenticateToDelete(AuthCredential credential) async {
    if (state.user == null) return;

    state = state.copyWith(state: DeleteUserState.authenticating);

    final result =
        await authRepository.reauthenticateWithCredential(credential);
    result.when(
      success: (_) => state = state.copyWith(
        state: DeleteUserState.authenticated,
        showConfirmDialog: true,
      ),
      failure: (msg) => {
        state = state.copyWith(
          state: DeleteUserState.error,
          errorMessage: msg,
        ),
        ToastUiUtil.showErrorFlutterToast('再認証に失敗しました'),
      },
    );
  }

  Future<void> confirmDelete() async {
    if (state.user == null) return;

    state = state.copyWith(
      state: DeleteUserState.deleting,
      showConfirmDialog: false,
    );

    final result = await _databaseRepository.deleteUser(state.user!.uid);
    result.when(
      success: (_) => state = state.copyWith(state: DeleteUserState.deleted),
      failure: (msg) => {
        state = state.copyWith(
          state: DeleteUserState.error,
          errorMessage: msg,
        ),
        ToastUiUtil.showErrorFlutterToast("ユーザーの削除が失敗しました"),
      },
    );
  }

  void cancelDelete() {
    state = state.copyWith(
      state: DeleteUserState.initial,
      showConfirmDialog: false,
    );
  }

  void resetState() {
    state = DeleteUserViewModelState(user: state.user);
  }
}
