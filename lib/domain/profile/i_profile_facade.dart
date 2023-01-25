
import 'package:dartz/dartz.dart';

import '../../infrastructure/models/me/me.dart';
import '../common/failure.dart';

abstract class IProfileFacade {

  Future<Either<ResponseFailure, MeResponseModel>> getMe();

}
