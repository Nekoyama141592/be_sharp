import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_problem.freezed.dart';
part 'read_problem.g.dart';

@freezed
abstract class ReadProblem implements _$ReadProblem {
  const ReadProblem._();
  const factory ReadProblem(
      {required dynamic createdAt,
      required String question,
      required String problemId,
      required int timeLimitSeconds,
      required List<String> answers,
      required dynamic updatedAt}) = _ReadProblem;
  factory ReadProblem.fromJson(Map<String, dynamic> json) =>
      _$ReadProblemFromJson(json);
  Timestamp typedCreatedAt() => createdAt as Timestamp;
  bool isInTimeLimit() {
    final createdAtDate = typedCreatedAt().toDate();
    final nowDate = DateTime.now();
    final difference = nowDate.difference(createdAtDate).inSeconds;
    return difference < timeLimitSeconds;
  }

  Duration timeLimitDuration() => Duration(seconds: timeLimitSeconds);
  DateTime timeLimitDate() {
    final createdAtDate = typedCreatedAt().toDate();
    final timeLimitDate = createdAtDate.add(timeLimitDuration());
    return timeLimitDate;
  }

  Duration leftTime() {
    final now = DateTime.now();
    return timeLimitDate().difference(now);
  }

  String timeLimitDateText() {
    final value = timeLimitDate();
    return '${value.hour}時${value.minute}分${value.second}秒';
  }
}
