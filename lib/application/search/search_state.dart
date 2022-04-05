part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchDataResult> searchData,
    required List<Downloads> idleData,
    required bool isLoading,
    required bool isError,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
        searchData: [],
        idleData: [],
        isLoading: true,
        isError: false,
      );
}
