import 'package:be_sharp/domain/converter/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_problem.freezed.dart';
part 'read_problem.g.dart';

@freezed
abstract class ReadProblem with _$ReadProblem {
  const ReadProblem._();
  const factory ReadProblem(
      {@TimestampConverter() required DateTime? createdAt,
      required String question,
      required String latex,
      required String problemId,
      required int timeLimitSeconds,
      required List<String> answers,
      @Default('math') String subject,
      @Default('unlimited') String category,
      @TimestampConverter() required DateTime? updatedAt}) = _ReadProblem;
  factory ReadProblem.fromJson(Map<String, dynamic> json) =>
      _$ReadProblemFromJson(json);
}
