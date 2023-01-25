part of 'auth_bloc.dart';

@immutable
@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    @Default(false) bool localAuth,
    @Default(false) bool proceedToVerifyCode,
    @Default(null) String? otpErrorText,
    @Default(null) SendOTPCodeResponseModel? authorizeResponseModel,
    @Default(null) SignUpModel? signUpModel,
    @Default(false) bool proceedToSendAgain,
    @Default(false) bool proceedToGetUserInfo,
    @Default(false) bool proceedToHome,
    @Default(false) bool proceedToHomeLogin,
    @Default(false) bool signUpSuccess,

  }) = _AuthState;
}
