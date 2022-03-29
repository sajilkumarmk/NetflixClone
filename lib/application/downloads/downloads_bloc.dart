import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domine/downloads/i_downloads_facade.dart';
import '../../domine/downloads/models/downloads.dart';
import '../../domine/failures/main_failures.dart';

part 'downloads_bloc.freezed.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final DownloadFacade _downloadFacade;

  DownloadsBloc(this._downloadFacade) : super(DownloadsState.initial()) {
    on<_GetPosterCard>((event, emit) async {
      // For showing loading indication
      emit(
        state.copyWith(isLoading: true),
      );
      // API Calling
      final Either<MainFailures, List<Downloads>> downloadsOption =
          await _downloadFacade.getPosterCards();
      // print(downloadsOption.toString());
      // Changing the state as the API call result
      emit(
        downloadsOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            failureOrSuccessOption: Some(Left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            downloads: success,
            failureOrSuccessOption: Some(Right(success)),
          ),
        ),
      );
    });
  }
}
