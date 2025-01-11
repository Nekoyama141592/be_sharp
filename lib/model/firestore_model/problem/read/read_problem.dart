import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_problem.freezed.dart';
part 'read_problem.g.dart';

@freezed
abstract class ReadProblem implements _$ReadProblem {
  const ReadProblem._();
  const factory ReadProblem(
      {required String question,
      required String problemId,
      required int timeLimitSeconds,
      required List<String> answers,
      required dynamic updatedAt}) = _ReadProblem;
  factory ReadProblem.fromJson(Map<String, dynamic> json) =>
      _$ReadProblemFromJson(json);
}
