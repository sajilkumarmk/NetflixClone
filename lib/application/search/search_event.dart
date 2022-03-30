part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.idle() = _Idle;
  const factory SearchEvent.search({
    required String movieQuery,
  }) = _Search;
}
