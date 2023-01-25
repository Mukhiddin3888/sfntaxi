
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../domain/common/failure.dart';
import '../../domain/trip/i_trip_facade.dart';
import '../api/abiz_apis.dart';
import '../core/exceptions.dart';
import '../core/globals.dart';
import '../models/trip/regions.dart';
import '../models/trip/trip.dart';
import '../services/db_service.dart';
import '../services/log_service.dart';

class TripRepository implements ITripFacade {
  final DBService _dbService;
  final TripService _tripService;

  TripRepository(this._dbService,
      this._tripService,);

  @override
  Future<Either<ResponseFailure, RegionsModel>> getRegions() async {
    try {
      final res = await _tripService.getRegions(
        token: _dbService.token.accessToken,
        lang: ApiHeaderInfo.appLang,
        deviceType: ApiHeaderInfo.deviceType,
        deviceUid: ApiHeaderInfo.deviceUid,
        appVersion: ApiHeaderInfo.appVersion,
        deviceModel: ApiHeaderInfo.deviceModel,
        appBuilt: ApiHeaderInfo.appBuild,
      );
      if (res.isSuccessful) {
        assert(res.body != null);

        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }


  @override
  Future<Either<ResponseFailure, TripSearchModel>> searchTrip(
      {required int startLocationId, required int endLocationId, required int isPostal, required int isPassenger}) async {
    try {
      final res = await _tripService.searchTrip(
        token: _dbService.token.accessToken,
        lang: ApiHeaderInfo.appLang,
        deviceType: ApiHeaderInfo.deviceType,
        deviceUid: ApiHeaderInfo.deviceUid,
        appVersion: ApiHeaderInfo.appVersion,
        deviceModel: ApiHeaderInfo.deviceModel,
        appBuilt: ApiHeaderInfo.appBuild,

        startLocationId: startLocationId,
        endLocationId: endLocationId,
        isPassenger: isPassenger,
        isPostal: isPostal

      );
      if (res.isSuccessful) {
        assert(res.body != null);

        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      LogService.e(e.toString());
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }






}
