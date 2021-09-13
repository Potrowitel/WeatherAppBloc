import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_event.freezed.dart';

@freezed
class TimeEvent with _$TimeEvent {
  const factory TimeEvent.start(int duration) = TimeStart;
  const factory TimeEvent.timeTicked(int duration) = TimeTicked;
}
