import 'dart:typed_data';

import 'package:be_sharp/model/firestore_model/public_user/read/read_public_user.dart';

class EditUserState {
  EditUserState({required this.user, required this.image});
  final ReadPublicUser user;
  final Uint8List? image;

  EditUserState copyWith({ReadPublicUser? user, Uint8List? image}) {
    return EditUserState(
      user: user ?? this.user,
      image: image ?? this.image,
    );
  }
}
