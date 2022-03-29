part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<Downloads> downloads,
    required Option<Either<MainFailures, List<Downloads>>>
        failureOrSuccessOption,
  }) = _DownloadsState;
  factory DownloadsState.initial() => const DownloadsState(
      isLoading: true, failureOrSuccessOption: None(), downloads: []);
}
