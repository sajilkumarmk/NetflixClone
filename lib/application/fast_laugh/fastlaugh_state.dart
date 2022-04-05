part of 'fastlaugh_bloc.dart';

@freezed
class FastlaughState with _$FastlaughState {
  const factory FastlaughState({
    required List<Downloads> videoList,
    required bool isLoading,
    required bool isError,
    required bool isLike,
  }) = _FastlaughState;
  factory FastlaughState.initial() => const FastlaughState(
        videoList: [],
        isLoading: true,
        isError: false,
        isLike: false,
      );
}
