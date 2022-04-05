import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domine/core/failures/main_failures.dart';
import '../../domine/downloads/i_downloads_facade.dart';
import '../../domine/downloads/models/downloads.dart';

part 'downloads_bloc.freezed.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final DownloadFacade _downloadFacade;

  DownloadsBloc(this._downloadFacade) : super(DownloadsState.initial()) {
    on<_GetPosterCard>((event, emit) async {
      if (state.downloads.isNotEmpty) {
        emit(state.copyWith(
          isLoading: false,
          isError: false,
        ));
        return;
      }
      // For showing loading indication
      emit(
        state.copyWith(isLoading: true),
      );
      // API Calling
      final Either<MainFailures, List<Downloads>> downloadsOption =
          await _downloadFacade.getPosterCards();
      // Changing the state as the API call result
      emit(
        downloadsOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            isError: true,
            downloads: [],
            failureOrSuccessOption: Some(Left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            isError: false,
            downloads: success,
            failureOrSuccessOption: Some(Right(success)),
          ),
        ),
      );
    });
  }
}
