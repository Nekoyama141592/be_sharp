import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_problem.freezed.dart';
part 'write_problem.g.dart';

@freezed
abstract class WriteProblem implements _$WriteProblem {
  const WriteProblem._();
  const factory WriteProblem({required String question,required dynamic createdAt}) =
      _WriteProblem;
  factory WriteProblem.fromJson(Map<String, dynamic> json) =>
      _$WriteProblemFromJson(json);
}
