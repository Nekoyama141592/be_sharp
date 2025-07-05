import 'package:be_sharp/infrastructure/repository/result/result.dart';
import 'package:be_sharp/infrastructure/model/rest_api/create_problem/request/create_problem_request.dart';
import 'package:be_sharp/infrastructure/model/rest_api/create_problem/response/create_problem_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/put_object/request/put_object_request.dart';
import 'package:be_sharp/infrastructure/model/rest_api/put_object/response/put_object_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/get_object/request/get_object_request.dart';
import 'package:be_sharp/infrastructure/model/rest_api/get_object/response/get_object_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/delete_object/request/delete_object_request.dart';
import 'package:be_sharp/infrastructure/model/rest_api/delete_object/response/delete_object_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/addCaption/request/add_caption_request.dart';
import 'package:be_sharp/infrastructure/model/rest_api/addCaption/response/add_caption_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/edit_user_info/request/edit_user_info_request.dart';
import 'package:be_sharp/infrastructure/model/rest_api/edit_user_info/response/edit_user_info_response.dart';
import 'package:be_sharp/infrastructure/model/rest_api/verify_purchase/request/receipt_request.dart';

abstract class ApiRepositoryInterface {
  FutureResult<CreateProblemResponse> createProblem(
      CreateProblemRequest request);
  FutureResult<PutObjectResponse> putObject(PutObjectRequest request);
  FutureResult<GetObjectResponse> getObject(GetObjectRequest request);
  FutureResult<DeleteObjectResponse> deleteObject(DeleteObjectRequest request);
  FutureResult<AddCaptionResponse> addCaption(AddCaptionRequest request);
  FutureResult<EditUserInfoResponse> editUserInfo(EditUserInfoRequest request);
  FutureResult<Object> verifyPurchase(ReceiptRequest request);
}
