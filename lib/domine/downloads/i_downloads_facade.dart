import 'package:dartz/dartz.dart';

import '../core/failures/main_failures.dart';
import 'models/downloads.dart';

abstract class DownloadFacade {
  Future<Either<MainFailures, List<Downloads>>> getPosterCards();
}
