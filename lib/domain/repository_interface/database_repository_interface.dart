import 'package:be_sharp/infrastructure/model/firestore_model/public_user/read/read_public_user.dart';

abstract class DatabaseRepositoryInterface {
  Future<List<ReadPublicUser>> getUsers(List<String> uids);
  Future<List<String>> getMuteUsers(String? currentUid, List<String> uids);
  Future<int> getUserCount(String problemId);
}
