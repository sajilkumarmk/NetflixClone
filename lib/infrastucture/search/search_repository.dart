import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../domine/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import '../../domine/search/i_search_facade.dart';
import '../../domine/search/searchdata/searchdata.dart';

import '../core/api_end_points.dart';

@LazySingleton(as: ISearchFacade)
class SearchRepository implements ISearchFacade {
  @override
  Future<Either<MainFailures, Searchdata>> searchMovie(
      {required String movieQuery}) async {
    // try catch statement is used to handle the exceptions or failure
    try {
      // creating a response by passing the url(Api call)
      final Response response = await Dio(BaseOptions())
          .get(ApiEndPoint.search, queryParameters: {'query': movieQuery});
      // Checking the response if it is success then return Right as searchResult
      // else return Left as ServerFailure
      if (response.statusCode == 200 || response.statusCode == 201) {
        // Here take the response.data and map it to datamodel Searchdata
        final result = Searchdata.fromJson(response.data);
        // print(result.results.toString());
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    }
    // inside the catch block the clientFailure is thrown
    catch (_) {
      return const Left(MainFailures.clientFailure());
    }
  }
}
