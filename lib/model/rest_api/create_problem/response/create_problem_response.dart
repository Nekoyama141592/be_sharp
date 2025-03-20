import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_problem_response.freezed.dart';
part 'create_problem_response.g.dart';

@freezed
abstract class CreateProblemResponse implements _$CreateProblemResponse {
  const CreateProblemResponse._();
  const factory CreateProblemResponse(
      {required int status}) = _CreateProblemResponse;
  factory CreateProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateProblemResponseFromJson(json);
}
