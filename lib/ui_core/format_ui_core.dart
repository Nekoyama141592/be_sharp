class FormatUICore {
  static formatDuration(Duration duration) {
    final seconds = duration.inSeconds;
    final formattedSeconds = seconds.toString().replaceAllMapped(
        RegExp(r'(\d)(?=(\d{3})+$)'), (match) => '${match[1]},');
    final result = '$formattedSeconds秒';
    return result;
  }

  static formatDurationWithResult(Duration duration, bool isInTime) {
    final result = isInTime ? '(クリア)' : '';
    return '${formatDuration(duration)}$result';
  }
}
