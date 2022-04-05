import 'package:dartz/dartz.dart';

import '../core/failures/main_failures.dart';
import 'searchdata/searchdata.dart';

abstract class ISearchFacade {
  Future<Either<MainFailures, Searchdata>> searchMovie({
    required String movieQuery,
  });
}
