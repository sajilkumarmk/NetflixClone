// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i5;
import '../../../application/search/search_bloc.dart' as _i8;
import '../../../infrastucture/downloads/downloads_repository.dart' as _i4;
import '../../../infrastucture/search/search_repository.dart' as _i7;
import '../../downloads/i_downloads_facade.dart' as _i3;
import '../../search/i_search_facade.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DownloadFacade>(() => _i4.DownloadsRepository());
  gh.factory<_i5.DownloadsBloc>(
      () => _i5.DownloadsBloc(get<_i3.DownloadFacade>()));
  gh.lazySingleton<_i6.ISearchFacade>(() => _i7.SearchRepository());
  gh.factory<_i8.SearchBloc>(() =>
      _i8.SearchBloc(get<_i3.DownloadFacade>(), get<_i6.ISearchFacade>()));
  return get;
}
