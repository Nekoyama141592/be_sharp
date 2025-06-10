import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_problem_request.freezed.dart';
part 'create_problem_request.g.dart';

@freezed
abstract class CreateProblemRequest with _$CreateProblemRequest {
  const CreateProblemRequest._();
  const factory CreateProblemRequest(
      {required String question,
      required String latex,
      required String problemId,
      required List<String> answers,
      @Default(120) int timeLimitSeconds,
      @Default('math') String subject,
      @Default('unlimited') String category}) = _CreateProblemRequest;
  factory CreateProblemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateProblemRequestFromJson(json);
}
