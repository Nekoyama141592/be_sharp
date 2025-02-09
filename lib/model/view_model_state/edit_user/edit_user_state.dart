import 'dart:typed_data';

import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';
import 'package:be_sharp/model/view_model_state/abstract/user_and_image_state.dart';

class EditUserState extends UserAndImageState {
  EditUserState({required super.user, super.image});
  @override
  EditUserState copyWith({ReadPublicUser? user, Uint8List? image}) {
    return EditUserState(
      user: user ?? this.user,
      image: image ?? this.image,
    );
  }
}
