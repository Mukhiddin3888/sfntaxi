import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


import '../../domain/auth/i_auth_facade.dart';
import '../../infrastructure/models/auth/auth.dart';
import '../../infrastructure/services/log_service.dart';


part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _repository;

  AuthBloc(this._repository, ) : super(const _AuthState()) {
    on<_CheckAuth>(_checkAuth);
    on<_SendOtpCode>(_emitSendOtpCode);
    on<_Verify>(_verify);
    on<_ReSend>(_resend);
    on<_PostSignUpModel>(_emitSignUpModel);
    on<_SignUp>(_emitSignUp);
    on<_Login>(_login);
  }

  /// Authentication Check
  Future<void> _checkAuth(_CheckAuth event, Emitter<AuthState> emit) async {
    final res = _repository.checkUser();
    res.fold(
      () {
        emit(state.copyWith(proceedToHome: true));
      },
      (error) {
        emit(state.copyWith(proceedToHome: false));
      },
    );
  }

  /// Authorize
  Future<void> _emitSendOtpCode(_SendOtpCode event, Emitter<AuthState> emit) async {
    EasyLoading.show();
    emit(state.copyWith(
      proceedToVerifyCode: false,
      authorizeResponseModel: null,
      otpErrorText: null,
    ));
    final phoneNumber = '998${event.phoneNumber.trim().substring(0, event.phoneNumber.length).replaceAll(' ', '')}';

    SendOTPModel model = SendOTPModel((p0) => p0..username =phoneNumber);
    final res = await _repository.sendOtpCode(model);
    res.fold((error) {
      EasyLoading.showError(error.message);

      LogService.e(error.message);
    }, (data) {
      if(data.success!){
        emit(state.copyWith(
          proceedToVerifyCode: true,
          authorizeResponseModel: data,
        ));
        EasyLoading.showSuccess('${data.data?.message}');

      }else{
        EasyLoading.showError('${data.error?.message}');

        LogService.e('${data.error?.message}');
      }


    });
  }

  /// Verify
  Future<void> _verify(_Verify event, Emitter<AuthState> emit) async {
    EasyLoading.show();
    emit(state.copyWith(otpErrorText: null, proceedToGetUserInfo: false, proceedToHome: false));

    final res = await _repository.verifyCode(event.verifyCodeModel);
    res.fold((error) {
      EasyLoading.showError(error.message);
      emit(state.copyWith(
        otpErrorText: error.message,
      ));
      LogService.e(error.message);
      EasyLoading.dismiss();
    }, (data) {
      if(data.data!.exists!){
        emit(state.copyWith( otpErrorText: null,proceedToHome: true));

      }else{
        emit(state.copyWith( otpErrorText: null,proceedToGetUserInfo: true));

      }
      EasyLoading.dismiss();
    });
  }

  /// Login
  Future<void> _login(_Login event, Emitter<AuthState> emit) async {
    EasyLoading.show();
    emit(state.copyWith( proceedToHomeLogin: false, proceedToHome: false));

    final res = await _repository.login(event.loginModel);
    res.fold((error) {
      EasyLoading.showError(error.message);
      emit(state.copyWith(
        proceedToHomeLogin: false,
      ));
      LogService.e(error.message);
      EasyLoading.dismiss();
    }, (data) {
      if(data.success!){
        if(data.data?.token != null){
          emit(state.copyWith( proceedToHomeLogin: true));

        }
        EasyLoading.showSuccess('${data.data?.message}');
      }else{
        emit(state.copyWith(
          proceedToHomeLogin: false,
        ));
        EasyLoading.showError('${data.error?.message}');
      }
    });
  }


  /// Resend
  Future<void> _resend(_ReSend event, Emitter<AuthState> emit) async {
    EasyLoading.show();
    emit(state.copyWith(
      otpErrorText: null,
      proceedToSendAgain: false,
    ));
    final phoneNumber = '998${event.phoneNumber.trim().substring(0, event.phoneNumber.length).replaceAll(' ', '')}';

    SendOTPModel model = SendOTPModel((p0) => p0..username =phoneNumber);

    final res = await _repository.reSend(model);
    res.fold((error) {
      EasyLoading.showError(error.message);

      emit(state.copyWith(
        otpErrorText: error.message,
        proceedToSendAgain: false,
      ));
      LogService.e(error.message);
      EasyLoading.dismiss();
    }, (data) {
      emit(state.copyWith(
        proceedToSendAgain: true,
      ));
      EasyLoading.dismiss();
    });
  }



  /// post SignUpModel
  Future<void> _emitSignUpModel(_PostSignUpModel event, Emitter<AuthState> emit) async {


    final SignUpModel signUpModel = SignUpModel(
        (v)=> v
          ..username = event.signUpModel?.username ?? state.signUpModel?.username
          ..fullName = event.signUpModel?.fullName ?? state.signUpModel?.fullName
          ..birthday = event.signUpModel?.birthday ?? state.signUpModel?.birthday
          ..password = event.signUpModel?.password ?? state.signUpModel?.password
          ..passwordConfirmation = event.signUpModel?.passwordConfirmation ?? state.signUpModel?.passwordConfirmation
          ..type = event.signUpModel?.type ?? state.signUpModel?.type
          ..code = event.signUpModel?.code ?? state.signUpModel?.code


    );


    emit(
        state.copyWith(
            signUpModel: signUpModel,

              ));

  }



  /// SignUp
  Future<void> _emitSignUp(_SignUp event, Emitter<AuthState> emit) async {
    EasyLoading.show();
    emit(state.copyWith(signUpSuccess: false));




    final res = await _repository.signUp(state.signUpModel);
    res.fold((error) {

      EasyLoading.showError(error.message);

      LogService.e(error.message);
      EasyLoading.dismiss();
    }, (data) {

      if(data.data?.token != null){
        emit(state.copyWith(signUpSuccess: true));
        EasyLoading.showSuccess('${data.data?.message}');

      }else{
        emit(state.copyWith(signUpSuccess: false));

        EasyLoading.showError('${data.error?.message}');

      }
    });
  }




}


