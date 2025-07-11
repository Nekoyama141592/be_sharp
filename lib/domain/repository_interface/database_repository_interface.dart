import 'package:be_sharp/domain/entity/database/public_user/public_user_entity.dart';

abstract class DatabaseRepositoryInterface {
  Future<List<PublicUserEntity>> getUsers(List<String> uids);
  Future<List<String>> getMuteUsers(String? currentUid, List<String> uids);
  Future<int> getUserCount(String problemId);
}
