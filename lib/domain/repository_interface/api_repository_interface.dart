import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:be_sharp/infrastructure/model/rest_api/addCaption/response/add_caption_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/create_problem/response/create_problem_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/update_user/response/update_user_response.dart';

abstract class ApiRepositoryInterface {
  /// addCaptionV2 を呼び出す
  FutureResult<AddCaptionResponse> addCaption({
    required String problemId,
    required String stringCaption,
  });

  /// createProblemV2 を呼び出す
  FutureResult<CreateProblemResponse> createProblem({
    required String question,
    required String latex,
    required String problemId,
    required List<String> answers,
    required int timeLimitSeconds,
  });

  /// updateUserV2 を呼び出す
  FutureResult<UpdateUserResponse> updateUser({
    String? base64Image,
    required String bio,
    required String userName,
  });
}
