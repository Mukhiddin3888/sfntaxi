part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuth() = _CheckAuth;

  const factory AuthEvent.sendOtpCode({required String phoneNumber}) = _SendOtpCode;

  const factory AuthEvent.reSend({required String phoneNumber}) = _ReSend;

  const factory AuthEvent.verify({required VerifyCodeModel verifyCodeModel}) = _Verify;

  const factory AuthEvent.postSignUpModel({  SignUpModel? signUpModel,}) = _PostSignUpModel;

  const factory AuthEvent.signUp() = _SignUp;

  const factory AuthEvent.login(LoginModel loginModel) = _Login;

}
