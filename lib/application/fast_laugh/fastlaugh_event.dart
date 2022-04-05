part of 'fastlaugh_bloc.dart';

@freezed
class FastlaughEvent with _$FastlaughEvent {
  const factory FastlaughEvent.started() = _Started;
  const factory FastlaughEvent.isLiked() = _IsLiked;
}
