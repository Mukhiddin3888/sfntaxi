library barber_sign_up_model;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth.g.dart';


/// Send OTP code
abstract class SendOTPModel implements Built<SendOTPModel, SendOTPModelBuilder> {
  SendOTPModel._();

  factory SendOTPModel([Function(SendOTPModelBuilder b) updates]) = _$SendOTPModel;

  @BuiltValueField(wireName: 'username')
  String? get username;

  static Serializer<SendOTPModel> get serializer => _$sendOTPModelSerializer;
}

/// SendOtp Respondse model
abstract class SendOTPCodeResponseModel implements Built<SendOTPCodeResponseModel, SendOTPCodeResponseModelBuilder> {SendOTPCodeResponseModel._();

  factory SendOTPCodeResponseModel([Function(SendOTPCodeResponseModelBuilder b) updates]) =
      _$SendOTPCodeResponseModel;

  @BuiltValueField(wireName: 'success')
  bool? get success;

  @BuiltValueField(wireName: 'error')
  ErrorResponseModel? get error;

  @BuiltValueField(wireName: 'data')
  SuccessResponseModel? get data;

  static Serializer<SendOTPCodeResponseModel> get serializer =>
      _$sendOTPCodeResponseModelSerializer;
}


/// Verify code or Check exist user api
abstract class VerifyCodeModel implements Built<VerifyCodeModel, VerifyCodeModelBuilder> {
  VerifyCodeModel._();

  factory VerifyCodeModel([Function(VerifyCodeModelBuilder b) updates]) = _$VerifyCodeModel;

  @BuiltValueField(wireName: 'code')
  String? get code;

  @BuiltValueField(wireName: 'username')
  String? get username;

  static Serializer<VerifyCodeModel> get serializer => _$verifyCodeModelSerializer;
}


abstract class VerifiedSuccessModel implements Built<VerifiedSuccessModel, VerifiedSuccessModelBuilder> {
  VerifiedSuccessModel._();

  factory VerifiedSuccessModel([Function(VerifiedSuccessModelBuilder b) updates]) =
      _$VerifiedSuccessModel;

  @BuiltValueField(wireName: 'success')
  bool? get success;

  @BuiltValueField(wireName: 'error')
  ErrorResponseModel? get error;


  @BuiltValueField(wireName: 'data')
  SuccessVerifyDataResponseModel? get data;

  static Serializer<VerifiedSuccessModel> get serializer => _$verifiedSuccessModelSerializer;
}


abstract class SuccessResponseModel implements Built<SuccessResponseModel, SuccessResponseModelBuilder> {SuccessResponseModel._();

  factory SuccessResponseModel([Function(SuccessResponseModelBuilder b) updates]) =
      _$SuccessResponseModel;

  @BuiltValueField(wireName: 'message')
  String? get message;

  static Serializer<SuccessResponseModel> get serializer => _$successResponseModelSerializer;
}

abstract class ErrorResponseModel implements Built<ErrorResponseModel, ErrorResponseModelBuilder> {ErrorResponseModel._();

factory ErrorResponseModel([Function(ErrorResponseModelBuilder b) updates]) =
_$ErrorResponseModel;

@BuiltValueField(wireName: 'message')
String? get message;

@BuiltValueField(wireName: 'code')
int? get errorCode;

static Serializer<ErrorResponseModel> get serializer =>
    _$errorResponseModelSerializer;
}

abstract class SuccessVerifyDataResponseModel implements Built<SuccessVerifyDataResponseModel, SuccessVerifyDataResponseModelBuilder> {SuccessVerifyDataResponseModel._();

factory SuccessVerifyDataResponseModel([Function(SuccessVerifyDataResponseModelBuilder b) updates]) =
_$SuccessVerifyDataResponseModel;

@BuiltValueField(wireName: 'exists')
bool? get exists;

static Serializer<SuccessVerifyDataResponseModel> get serializer => _$successVerifyDataResponseModelSerializer;
}


/// Sign up code
abstract class SignUpModel implements Built<SignUpModel, SignUpModelBuilder> {
  SignUpModel._();

  factory SignUpModel([Function(SignUpModelBuilder b) updates]) = _$SignUpModel;

  @BuiltValueField(wireName: 'username')
  String? get username;

  @BuiltValueField(wireName: 'code')
  String? get code;

  @BuiltValueField(wireName: 'full_name')
  String? get fullName;

  @BuiltValueField(wireName: 'birthday')
  String? get birthday;

  @BuiltValueField(wireName: 'type')
  String? get type;

  @BuiltValueField(wireName: 'password')
  String? get password;

  @BuiltValueField(wireName: 'password_confirmation')
  String? get passwordConfirmation;

  static Serializer<SignUpModel> get serializer => _$signUpModelSerializer;
}

/// Sign up Activity code
abstract class SignUpActivityModel implements Built<SignUpActivityModel,SignUpActivityModelBuilder> {
  SignUpActivityModel._();

  factory SignUpActivityModel([Function(SignUpActivityModelBuilder b) updates]) = _$SignUpActivityModel;

  @BuiltValueField(wireName: 'id')
  String? get id;

  @BuiltValueField(wireName: 'name')
  String? get name;


  static Serializer<SignUpActivityModel> get serializer => _$signUpActivityModelSerializer;
}

/// Login
abstract class LoginModel implements Built<LoginModel,LoginModelBuilder> {
  LoginModel._();

  factory LoginModel([Function(LoginModelBuilder b) updates]) = _$LoginModel;

  @BuiltValueField(wireName: 'code')
  String? get code;

  @BuiltValueField(wireName: 'username')
  String? get username;

  @BuiltValueField(wireName: 'password')
  String? get password;

  static Serializer<LoginModel> get serializer => _$loginModelSerializer;
}



abstract class VerifiedExistsSuccessModel implements Built<VerifiedExistsSuccessModel, VerifiedExistsSuccessModelBuilder> {
  VerifiedExistsSuccessModel._();

  factory VerifiedExistsSuccessModel([Function(VerifiedExistsSuccessModelBuilder b) updates]) =
  _$VerifiedExistsSuccessModel;

  @BuiltValueField(wireName: 'success')
  bool? get success;

  @BuiltValueField(wireName: 'error')
  ErrorResponseModel? get error;


  @BuiltValueField(wireName: 'data')
  SuccessLoginResponseModel? get data;

  static Serializer<VerifiedExistsSuccessModel> get serializer => _$verifiedExistsSuccessModelSerializer;
}


abstract class SuccessLoginResponseModel implements Built<SuccessLoginResponseModel, SuccessLoginResponseModelBuilder> {
  SuccessLoginResponseModel._();

factory SuccessLoginResponseModel([Function(SuccessLoginResponseModelBuilder b) updates]) =_$SuccessLoginResponseModel;

@BuiltValueField(wireName: 'message')
String? get message;

@BuiltValueField(wireName: 'token')
String? get token;

static Serializer<SuccessLoginResponseModel> get serializer => _$successLoginResponseModelSerializer;
}

