
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:sfntaxi/domain/core/token_ext.dart';
import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/common/failure.dart';
import '../../domain/core/token.dart';
import '../api/abiz_apis.dart';
import '../core/exceptions.dart';
import '../core/globals.dart';
import '../models/auth/auth.dart';
import '../services/db_service.dart';
import '../services/log_service.dart';

class AuthRepository implements IAuthFacade {
  final DBService _dbService;
  final AuthService _authService;

  AuthRepository(
    this._dbService,
    this._authService,
  );


  /// Get user
  @override
  Option<AuthFailure> checkUser() {
    final Token token = _dbService.token;
    return optionOf(token.hasFailure);
  }

  /// Authorize
  @override
  Future<Either<ResponseFailure, SendOTPCodeResponseModel>> sendOtpCode(SendOTPModel authorizeModel) async {
    try {
      final res = await _authService.sendOTPCode( authorizeModel,
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
      debugPrint('dgg $e');
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

  /// Verify
  @override
  Future<Either<ResponseFailure, VerifiedSuccessModel>> verifyCode(
      VerifyCodeModel verifyCodeModel) async {
    try {
      final res = await _authService.verify(verifyCodeModel,       lang: ApiHeaderInfo.appLang,
        deviceType: ApiHeaderInfo.deviceType,
        deviceUid: ApiHeaderInfo.deviceUid,
        appVersion: ApiHeaderInfo.appVersion,
        deviceModel: ApiHeaderInfo.deviceModel,
        appBuilt: ApiHeaderInfo.appBuild,);
      if (res.isSuccessful) {
        assert(res.body != null);
        if(res.body!.success!){

          return right(res.body!);
        }

        else {
          return left(InvalidCredentials(message: '${res.body?.error?.message}'));
        }

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
  Future<Either<ResponseFailure, bool>> reSend(SendOTPModel phoneNumber) async {
    try {
      final res = await _authService.sendOTPCode(phoneNumber,
        lang: ApiHeaderInfo.appLang,
        deviceType: ApiHeaderInfo.deviceType,
        deviceUid: ApiHeaderInfo.deviceUid,
        appVersion: ApiHeaderInfo.appVersion,
        deviceModel: ApiHeaderInfo.deviceModel,
        appBuilt: ApiHeaderInfo.appBuild,
      );
      if (res.isSuccessful) {
        return right(true);
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
  Future<Either<ResponseFailure, VerifiedExistsSuccessModel>> signUp(SignUpModel? signUpModel) async {
    try {
      final res = await _authService.signUp( signUpModel,      lang: ApiHeaderInfo.appLang,
        deviceType: ApiHeaderInfo.deviceType,
        deviceUid: ApiHeaderInfo.deviceUid,
        appVersion: ApiHeaderInfo.appVersion,
        deviceModel: ApiHeaderInfo.deviceModel,
        appBuilt: ApiHeaderInfo.appBuild,);
      if (res.isSuccessful) {
        assert(res.body != null);
        if(res.body!.success!){
          if(res.body?.data?.token != null){
            final resToken = "Bearer ${res.body!.data!.token}";
            final token = Token(
              accessToken: resToken,
              refreshToken: resToken,
            );
            await _dbService.setToken(token);
          }
            debugPrint('tokenkuuu ${_dbService.token}');
          return right(res.body!);
        }

        else {
          return left(InvalidCredentials(message: '${res.body?.error?.message}'));
        }

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
  Future<Either<ResponseFailure, VerifiedExistsSuccessModel>> login(LoginModel loginModel) async {
    try {
      final res = await _authService.login( loginModel,
        lang: ApiHeaderInfo.appLang,
        deviceType: ApiHeaderInfo.deviceType,
        deviceUid: ApiHeaderInfo.deviceUid,
        appVersion: ApiHeaderInfo.appVersion,
        deviceModel: ApiHeaderInfo.deviceModel,
        appBuilt: ApiHeaderInfo.appBuild,);
      if (res.isSuccessful) {
        assert(res.body != null);
        if(res.body!.success!){
          if(res.body?.data?.token != null){
            final resToken = "Bearer ${res.body!.data!.token}";
            final token = Token(
              accessToken: resToken,
              refreshToken: resToken,
            );
            await _dbService.setToken(token);
          }
          debugPrint('tokenkuuu ${_dbService.token}');
          return right(res.body!);
        }

        else {
          return left(InvalidCredentials(message: '${res.body?.error?.message}'));
        }

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
