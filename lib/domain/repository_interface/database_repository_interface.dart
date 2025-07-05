import 'package:be_sharp/domain/repository_interface/repository_interface.dart';

abstract class DatabaseRepositoryInterface extends RepositoryInterface<void> {
  Future<List<dynamic>> getUsers(List<String> uids);
  Future<List<String>> getMuteUsers(String? currentUid, List<String> uids);
  Future<int> getUserCount(String problemId);
}
