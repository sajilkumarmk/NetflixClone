part of 'hotandnew_bloc.dart';

@freezed
class HotandnewState with _$HotandnewState {
  const factory HotandnewState({
    required bool isloading,
    required bool isError,
    required List<Result> commingsoon,
  }) = _HotandnewState;

  factory HotandnewState.initial() =>
      const HotandnewState(isloading: true, isError: false, commingsoon: []);
}
