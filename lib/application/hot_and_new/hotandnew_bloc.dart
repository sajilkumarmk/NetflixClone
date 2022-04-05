import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixclone/domine/core/failures/main_failures.dart';
import 'package:netflixclone/domine/hot_and_new/i_hot_and_new_facade.dart';
import 'package:netflixclone/domine/hot_and_new/model/hotandnewdata.dart';

part 'hotandnew_event.dart';
part 'hotandnew_state.dart';
part 'hotandnew_bloc.freezed.dart';

@injectable
class HotandnewBloc extends Bloc<HotandnewEvent, HotandnewState> {
  final IHotAndNewFacade _hotAndNewFacade;
  HotandnewBloc(this._hotAndNewFacade) : super(HotandnewState.initial()) {
    // CommmingSoon
    on<_CommingSoon>((event, emit) async {
      emit(state.copyWith(isloading: true));
      // get data
      final _result = await _hotAndNewFacade.getCommingSoon();
      // print(_result.toString());
      emit(_result.fold(
        (MainFailures failures) => state.copyWith(
          isError: true,
          isloading: false,
          commingsoon: [],
        ),
        (Hotandnewdata success) => state.copyWith(
          isError: false,
          isloading: false,
          commingsoon: success.results,
        ),
      ));
      // show to UI
    });
  }
}
