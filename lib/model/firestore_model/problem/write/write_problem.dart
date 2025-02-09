import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_problem.freezed.dart';
part 'write_problem.g.dart';

@freezed
abstract class WriteProblem implements _$WriteProblem {
  const WriteProblem._();
  const factory WriteProblem(
      {required dynamic createdAt,
      required String question,
      required String latex,
      required String problemId,
      @Default(120) int timeLimitSeconds,
      @Default([]) List<String> answers,
      @Default('math') String subject,
      @Default('unlimited') String category,
      required dynamic updatedAt}) = _WriteProblem;
  factory WriteProblem.fromJson(Map<String, dynamic> json) =>
      _$WriteProblemFromJson(json);
}
