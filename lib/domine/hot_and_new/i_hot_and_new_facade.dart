import 'package:dartz/dartz.dart';
import 'package:netflixclone/domine/core/failures/main_failures.dart';
import 'package:netflixclone/domine/hot_and_new/model/hotandnewdata.dart';

abstract class IHotAndNewFacade {
  Future<Either<MainFailures, Hotandnewdata>> getCommingSoon();
  Future<Either<MainFailures, Hotandnewdata>> getEveryOnesWatching();
}
