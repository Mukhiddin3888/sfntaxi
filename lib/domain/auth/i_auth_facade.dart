
import 'package:dartz/dartz.dart';

import '../../infrastructure/models/auth/auth.dart';
import '../common/failure.dart';
import 'auth_failure.dart';

abstract class IAuthFacade {
  Option<AuthFailure> checkUser();

  Future<Either<ResponseFailure, SendOTPCodeResponseModel>> sendOtpCode(SendOTPModel authorizeModel);

  Future<Either<ResponseFailure, VerifiedSuccessModel>> verifyCode(VerifyCodeModel verifyCodeModel);

  Future<Either<ResponseFailure, bool>> reSend(SendOTPModel phoneNumber);

  Future<Either<ResponseFailure, VerifiedExistsSuccessModel>> signUp(SignUpModel? signUpModel);

  Future<Either<ResponseFailure, VerifiedExistsSuccessModel>> login(LoginModel loginModel);

}
