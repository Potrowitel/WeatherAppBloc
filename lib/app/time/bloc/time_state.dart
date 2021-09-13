import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_state.freezed.dart';

@freezed
class TimeState with _$TimeState {
  const factory TimeState.loading() = TimeLoadingState;
  const factory TimeState.started(int duration) = TimeStartedState;
}
