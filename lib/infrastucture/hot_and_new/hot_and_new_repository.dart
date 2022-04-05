import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../domine/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import '../../domine/hot_and_new/i_hot_and_new_facade.dart';
import '../../domine/hot_and_new/model/hotandnewdata.dart';

import '../core/api_end_points.dart';

@LazySingleton(as: IHotAndNewFacade)
class HotAndNewRepository implements IHotAndNewFacade {
  @override
  Future<Either<MainFailures, Hotandnewdata>> getCommingSoon() async {
    // try catch statement is used to handle the exceptions or failure
    try {
      // creating a response by passing the url(Api call)
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoint.commingSoon);
      // Checking the response if it is success then return Right as searchResult
      // else return Left as ServerFailure
      if (response.statusCode == 200 || response.statusCode == 201) {
        // Here take the response.data and map it to datamodel Searchdata
        final result = Hotandnewdata.fromJson(response.data);
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

  @override
  Future<Either<MainFailures, Hotandnewdata>> getEveryOnesWatching() async {
    // try catch statement is used to handle the exceptions or failure
    try {
      // creating a response by passing the url(Api call)
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoint.everyOnesWatching);
      // Checking the response if it is success then return Right as searchResult
      // else return Left as ServerFailure
      if (response.statusCode == 200 || response.statusCode == 201) {
        // Here take the response.data and map it to datamodel Searchdata
        final result = Hotandnewdata.fromJson(response.data);
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
