// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i5;
import '../../../application/fast_laugh/fastlaugh_bloc.dart' as _i6;
import '../../../application/hot_and_new/every_ones_watching/everyoneswatching_bloc.dart'
    as _i12;
import '../../../application/hot_and_new/hotandnew_bloc.dart' as _i13;
import '../../../application/search/search_bloc.dart' as _i11;
import '../../../infrastucture/downloads/downloads_repository.dart' as _i4;
import '../../../infrastucture/hot_and_new/hot_and_new_repository.dart' as _i8;
import '../../../infrastucture/search/search_repository.dart' as _i10;
import '../../downloads/i_downloads_facade.dart' as _i3;
import '../../hot_and_new/i_hot_and_new_facade.dart' as _i7;
import '../../search/i_search_facade.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DownloadFacade>(() => _i4.DownloadsRepository());
  gh.factory<_i5.DownloadsBloc>(
      () => _i5.DownloadsBloc(get<_i3.DownloadFacade>()));
  gh.factory<_i6.FastlaughBloc>(
      () => _i6.FastlaughBloc(get<_i3.DownloadFacade>()));
  gh.lazySingleton<_i7.IHotAndNewFacade>(() => _i8.HotAndNewRepository());
  gh.lazySingleton<_i9.ISearchFacade>(() => _i10.SearchRepository());
  gh.factory<_i11.SearchBloc>(() =>
      _i11.SearchBloc(get<_i3.DownloadFacade>(), get<_i9.ISearchFacade>()));
  gh.factory<_i12.EveryoneswatchingBloc>(
      () => _i12.EveryoneswatchingBloc(get<_i7.IHotAndNewFacade>()));
  gh.factory<_i13.HotandnewBloc>(
      () => _i13.HotandnewBloc(get<_i7.IHotAndNewFacade>()));
  return get;
}
