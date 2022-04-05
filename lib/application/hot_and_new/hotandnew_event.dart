part of 'hotandnew_bloc.dart';

@freezed
class HotandnewEvent with _$HotandnewEvent {
  const factory HotandnewEvent.commingSoon() = _CommingSoon;
  const factory HotandnewEvent.watchNow() = _WatchNow;
}
