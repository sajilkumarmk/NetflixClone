import 'package:dartz/dartz.dart';
import '../failures/main_failures.dart';
import 'searchdata/searchdata.dart';

abstract class ISearchFacade {
  Future<Either<MainFailures, Searchdata>> searchMovie({
    required String movieQuery,
  });
}
