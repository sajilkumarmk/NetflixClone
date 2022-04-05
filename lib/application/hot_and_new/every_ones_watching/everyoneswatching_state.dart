part of 'everyoneswatching_bloc.dart';

@freezed
class EveryoneswatchingState with _$EveryoneswatchingState {
  const factory EveryoneswatchingState({
    required bool isloading,
    required bool isError,
    required List<Result> everyoneswatching,
  }) = _EveryoneswatchingState;

  factory EveryoneswatchingState.initial() => const EveryoneswatchingState(
      isloading: true, isError: false, everyoneswatching: []);
}
