import 'package:be_sharp/domain/converter/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'problem_entity.freezed.dart';
part 'problem_entity.g.dart';

@freezed
abstract class ProblemEntity with _$ProblemEntity {
  const ProblemEntity._();
  const factory ProblemEntity({
    @TimestampConverter() DateTime? createdAt,
    required String question,
    required String latex,
    required String problemId,
    required int timeLimitSeconds,
    required List<String> answers,
  }) = _ProblemEntity;
  factory ProblemEntity.fromJson(Map<String, dynamic> json) =>
      _$ProblemEntityFromJson(json);

  bool isInTimeLimit() {
    final createdAtDate = createdAt!;
    final nowDate = DateTime.now();
    final difference = nowDate.difference(createdAtDate).inSeconds;
    return difference < timeLimitSeconds;
  }

  Duration timeLimitDuration() => Duration(seconds: timeLimitSeconds);

  DateTime timeLimitDate() {
    final createdAtDate = createdAt!;
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
