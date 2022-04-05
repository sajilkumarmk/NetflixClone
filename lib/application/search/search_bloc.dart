import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domine/core/failures/main_failures.dart';
import '../../domine/downloads/i_downloads_facade.dart';
import '../../domine/search/i_search_facade.dart';

import '../../domine/downloads/models/downloads.dart';
import '../../domine/search/searchdata/searchdata.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final DownloadFacade _downloadFacade;
  final ISearchFacade _iSearchFacade;
  SearchBloc(this._downloadFacade, this._iSearchFacade)
      : super(SearchState.initial()) {
    /*
    Idle State
    */
    on<_Idle>((event, emit) async {
// if already list has data
      if (state.idleData.isNotEmpty) {
        emit(
          state.copyWith(
            searchData: [],
            isError: false,
            isLoading: false,
          ),
        );
        return;
      }
      // get topSearch
      emit(state.copyWith(
        isLoading: true,
        searchData: [],
        idleData: [],
        isError: false,
      ));
      final result = await _downloadFacade.getPosterCards();
      // print(result.toString());
      emit(result.fold(
        (MainFailures failures) => state.copyWith(
          searchData: [],
          idleData: [],
          isLoading: false,
          isError: true,
        ),
        (List<Downloads> success) => state.copyWith(
          searchData: [],
          idleData: success,
          isError: false,
          isLoading: false,
        ),
      ));
      // show to UI
    });

    /*
    Search State
    */
    on<_Search>((event, emit) async {
      // get SearchData
      emit(state.copyWith(
        isLoading: true,
      ));
      final _result =
          await _iSearchFacade.searchMovie(movieQuery: event.movieQuery);
      // print(_result.toString());
      emit(_result.fold((MainFailures failures) {
        return state.copyWith(
          searchData: [],
          isLoading: false,
          isError: true,
        );
      }, (Searchdata success) {
        return state.copyWith(
          searchData: success.results,
          isError: false,
          isLoading: false,
        );
      }));
      // show to UI
    });
  }
}
