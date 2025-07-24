import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:be_sharp/infrastructure/model/rest_api/create_problem/response/create_problem_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/put_object/response/put_object_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/get_object/response/get_object_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/delete_object/response/delete_object_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/addCaption/response/add_caption_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/edit_user_info/response/edit_user_info_response.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

abstract class ApiRepositoryInterface {
  FutureResult<CreateProblemResponse> createProblem({
    required String question,
    required String latex,
    required String problemId,
    required List<String> answers,
    required int timeLimitSeconds,
  });
  FutureResult<PutObjectResponse> putObject({
    required String base64Image,
    required String object,
  });
  FutureResult<GetObjectResponse> getObject({
    required String object,
  });
  FutureResult<DeleteObjectResponse> deleteObject({
    required String object,
  });
  FutureResult<AddCaptionResponse> addCaption({
    required String problemId,
    required String stringCaption,
  });
  FutureResult<EditUserInfoResponse> editUserInfo({
    required String stringNickName,
    required String stringBio,
    required String object,
  });
  FutureResult<Object> verifyPurchase({
    required PurchaseDetails purchaseDetails,
  });
}
