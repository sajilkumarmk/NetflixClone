import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domine/core/failures/main_failures.dart';
import '../../../domine/hot_and_new/i_hot_and_new_facade.dart';
import '../../../domine/hot_and_new/model/hotandnewdata.dart';

part 'everyoneswatching_event.dart';
part 'everyoneswatching_state.dart';
part 'everyoneswatching_bloc.freezed.dart';

@injectable
class EveryoneswatchingBloc
    extends Bloc<EveryoneswatchingEvent, EveryoneswatchingState> {
  final IHotAndNewFacade _hotAndNewFacade;
  EveryoneswatchingBloc(this._hotAndNewFacade)
      : super(EveryoneswatchingState.initial()) {
    on<_EveryOnesWatching>((event, emit) async {
      emit(state.copyWith(isloading: true));
      // get data
      final _result = await _hotAndNewFacade.getEveryOnesWatching();
      // print(_result.toString());
      emit(_result.fold(
        (MainFailures failures) => state.copyWith(
          isError: true,
          isloading: false,
          everyoneswatching: [],
        ),
        (Hotandnewdata success) => state.copyWith(
          isError: false,
          isloading: false,
          everyoneswatching: success.results,
        ),
      ));
      // show to UI
    });
  }
}
