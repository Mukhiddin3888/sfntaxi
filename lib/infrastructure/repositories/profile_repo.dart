
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../domain/common/failure.dart';
import '../../domain/profile/i_profile_facade.dart';
import '../api/abiz_apis.dart';
import '../core/exceptions.dart';
import '../core/globals.dart';
import '../models/me/me.dart';
import '../services/db_service.dart';
import '../services/log_service.dart';

class ProfileRepository implements IProfileFacade {
  final DBService _dbService;
  final ProfileService _profileService;

  ProfileRepository(
      this._dbService,
      this._profileService,
      );


  @override
  Future<Either<ResponseFailure, MeResponseModel>> getMe() async {
    try {
      final res = await _profileService.getMe(
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




}
