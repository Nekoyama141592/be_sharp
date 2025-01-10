import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_problem.freezed.dart';
part 'write_problem.g.dart';

@freezed
abstract class WriteProblem implements _$WriteProblem {
  const WriteProblem._();
  const factory WriteProblem(
      {required String question,
      required dynamic createdAt,
      required String problemId,
      @Default([]) List<String> answers,
      required dynamic updatedAt}) = _WriteProblem;
  factory WriteProblem.fromJson(Map<String, dynamic> json) =>
      _$WriteProblemFromJson(json);
}
