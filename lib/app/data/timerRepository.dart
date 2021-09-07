class TimerFailure implements Exception {}

class TimerRepository {
  DateTime getCurrentTime(int timeOffset) {
    int time = DateTime.now().toUtc().microsecondsSinceEpoch;

    DateTime dTime = DateTime.fromMicrosecondsSinceEpoch(time, isUtc: true);
    print(timeOffset);
    print(dTime);
    int time2 = dTime.millisecondsSinceEpoch;
    print(time2);
    time += timeOffset;
    return DateTime.fromMillisecondsSinceEpoch(time2 * 1000);
  }
}
