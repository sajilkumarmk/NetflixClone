import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../core/api_end_points.dart';
import '../../domine/downloads/i_downloads_facade.dart';
import '../../domine/downloads/models/downloads.dart';
import '../../domine/failures/main_failures.dart';

@LazySingleton(as: DownloadFacade)
class DownloadsRepository implements DownloadFacade {
  @override
  Future<Either<MainFailures, List<Downloads>>> getPosterCards() async {
    // try catch statement is used to handle the exceptions or failure
    try {
      // creating a response by passing the url(Api call)
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoint.downloads);

      // Checking the response if it is success then return Right as List<Downloads>
      // else return Left as ServerFailure
      if (response.statusCode == 200 || response.statusCode == 201) {
        // Here we take the response.data['result'] and map it to the Downloads datamodel and return as downloadsList
        final downloadsList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();
        // log(downloadsList.toString());
        return Right(downloadsList);
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
