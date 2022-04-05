import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domine/core/failures/main_failures.dart';
import '../../domine/downloads/i_downloads_facade.dart';

import '../../domine/downloads/models/downloads.dart';

part 'fastlaugh_event.dart';
part 'fastlaugh_state.dart';
part 'fastlaugh_bloc.freezed.dart';

final videoUrlList = [
  "https://assets.mixkit.co/videos/preview/mixkit-woman-decorates-christmas-tree-at-home-2721-large.mp4",
  "https://assets.mixkit.co/videos/preview/mixkit-man-doing-tricks-with-roller-skates-in-a-parking-lot-34553-large.mp4",
  "https://assets.mixkit.co/videos/preview/mixkit-two-avenues-with-many-cars-traveling-at-night-34562-large.mp4",
  "https://assets.mixkit.co/videos/preview/mixkit-urban-woman-with-a-smoke-bomb-at-a-forest-1861-large.mp4",
  "https://assets.mixkit.co/videos/preview/mixkit-basketball-player-dribbling-then-dunking-2285-large.mp4",
  "https://assets.mixkit.co/videos/preview/mixkit-soccer-football-player-tries-an-overhead-kick-2915-large.mp4",
];

@Injectable()
class FastlaughBloc extends Bloc<FastlaughEvent, FastlaughState> {
  final DownloadFacade _downloadFacade;
  FastlaughBloc(this._downloadFacade) : super(FastlaughState.initial()) {
    on<FastlaughEvent>((event, emit) async {
      // loading Indication
      emit(
        state.copyWith(
          isLoading: true,
          videoList: [],
          isError: false,
        ),
      );
      // get movie details
      final _result = await _downloadFacade.getPosterCards();
      // show to UI
      emit(_result.fold(
        (MainFailures failures) => state.copyWith(
          videoList: [],
          isLoading: false,
          isError: true,
        ),
        (List<Downloads> success) => state.copyWith(
          videoList: success,
          isLoading: false,
          isError: false,
        ),
      ));
    });
    // liked video
    // on<_IsLiked>((event, emit) {
    //   if (state.isLike) {
    //     emit(state.copyWith(isLike: false));
    //   } else {
    //     emit(state.copyWith(isLike: true));
    //   }
    // });
  }
}
