
import 'package:dartz/dartz.dart';
import '../../infrastructure/models/trip/regions.dart';
import '../../infrastructure/models/trip/trip.dart';
import '../common/failure.dart';

abstract class ITripFacade {

  Future<Either<ResponseFailure, RegionsModel>> getRegions();
  Future<Either<ResponseFailure, TripSearchModel>> searchTrip({
    required int startLocationId,
    required int endLocationId,
    required int isPostal,
    required int isPassenger,
  });

}
