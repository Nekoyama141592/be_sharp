import 'package:cloud_firestore/cloud_firestore.dart';

class TimestampCore {
  static Timestamp getTyped(dynamic value) {
    if (value is Map<String, dynamic>) {
      const int kThousand = 1000;
      final milliseconds = (value['_seconds'] as int) * kThousand;
      return Timestamp.fromMillisecondsSinceEpoch(milliseconds);
    } else {
      return value as Timestamp;
    }
  }
}
