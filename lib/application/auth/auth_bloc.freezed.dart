// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber) sendOtpCode,
    required TResult Function(String phoneNumber) reSend,
    required TResult Function(VerifyCodeModel verifyCodeModel) verify,
    required TResult Function(SignUpModel? signUpModel) postSignUpModel,
    required TResult Function() signUp,
    required TResult Function(LoginModel loginModel) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(String phoneNumber)? sendOtpCode,
    TResult? Function(String phoneNumber)? reSend,
    TResult? Function(VerifyCodeModel verifyCodeModel)? verify,
    TResult? Function(SignUpModel? signUpModel)? postSignUpModel,
    TResult? Function()? signUp,
    TResult? Function(LoginModel loginModel)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber)? sendOtpCode,
    TResult Function(String phoneNumber)? reSend,
    TResult Function(VerifyCodeModel verifyCodeModel)? verify,
    TResult Function(SignUpModel? signUpModel)? postSignUpModel,
    TResult Function()? signUp,
    TResult Function(LoginModel loginModel)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SendOtpCode value) sendOtpCode,
    required TResult Function(_ReSend value) reSend,
    required TResult Function(_Verify value) verify,
    required TResult Function(_PostSignUpModel value) postSignUpModel,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SendOtpCode value)? sendOtpCode,
    TResult? Function(_ReSend value)? reSend,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_PostSignUpModel value)? postSignUpModel,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SendOtpCode value)? sendOtpCode,
    TResult Function(_ReSend value)? reSend,
    TResult Function(_Verify value)? verify,
    TResult Function(_PostSignUpModel value)? postSignUpModel,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckAuthCopyWith<$Res> {
  factory _$$_CheckAuthCopyWith(
          _$_CheckAuth value, $Res Function(_$_CheckAuth) then) =
      __$$_CheckAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckAuthCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CheckAuth>
    implements _$$_CheckAuthCopyWith<$Res> {
  __$$_CheckAuthCopyWithImpl(
      _$_CheckAuth _value, $Res Function(_$_CheckAuth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckAuth with DiagnosticableTreeMixin implements _CheckAuth {
  const _$_CheckAuth();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.checkAuth()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.checkAuth'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber) sendOtpCode,
    required TResult Function(String phoneNumber) reSend,
    required TResult Function(VerifyCodeModel verifyCodeModel) verify,
    required TResult Function(SignUpModel? signUpModel) postSignUpModel,
    required TResult Function() signUp,
    required TResult Function(LoginModel loginModel) login,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(String phoneNumber)? sendOtpCode,
    TResult? Function(String phoneNumber)? reSend,
    TResult? Function(VerifyCodeModel verifyCodeModel)? verify,
    TResult? Function(SignUpModel? signUpModel)? postSignUpModel,
    TResult? Function()? signUp,
    TResult? Function(LoginModel loginModel)? login,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber)? sendOtpCode,
    TResult Function(String phoneNumber)? reSend,
    TResult Function(VerifyCodeModel verifyCodeModel)? verify,
    TResult Function(SignUpModel? signUpModel)? postSignUpModel,
    TResult Function()? signUp,
    TResult Function(LoginModel loginModel)? login,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SendOtpCode value) sendOtpCode,
    required TResult Function(_ReSend value) reSend,
    required TResult Function(_Verify value) verify,
    required TResult Function(_PostSignUpModel value) postSignUpModel,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_Login value) login,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SendOtpCode value)? sendOtpCode,
    TResult? Function(_ReSend value)? reSend,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_PostSignUpModel value)? postSignUpModel,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_Login value)? login,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SendOtpCode value)? sendOtpCode,
    TResult Function(_ReSend value)? reSend,
    TResult Function(_Verify value)? verify,
    TResult Function(_PostSignUpModel value)? postSignUpModel,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _CheckAuth implements AuthEvent {
  const factory _CheckAuth() = _$_CheckAuth;
}

/// @nodoc
abstract class _$$_SendOtpCodeCopyWith<$Res> {
  factory _$$_SendOtpCodeCopyWith(
          _$_SendOtpCode value, $Res Function(_$_SendOtpCode) then) =
      __$$_SendOtpCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_SendOtpCodeCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SendOtpCode>
    implements _$$_SendOtpCodeCopyWith<$Res> {
  __$$_SendOtpCodeCopyWithImpl(
      _$_SendOtpCode _value, $Res Function(_$_SendOtpCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_SendOtpCode(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendOtpCode with DiagnosticableTreeMixin implements _SendOtpCode {
  const _$_SendOtpCode({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.sendOtpCode(phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.sendOtpCode'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendOtpCode &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendOtpCodeCopyWith<_$_SendOtpCode> get copyWith =>
      __$$_SendOtpCodeCopyWithImpl<_$_SendOtpCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber) sendOtpCode,
    required TResult Function(String phoneNumber) reSend,
    required TResult Function(VerifyCodeModel verifyCodeModel) verify,
    required TResult Function(SignUpModel? signUpModel) postSignUpModel,
    required TResult Function() signUp,
    required TResult Function(LoginModel loginModel) login,
  }) {
    return sendOtpCode(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(String phoneNumber)? sendOtpCode,
    TResult? Function(String phoneNumber)? reSend,
    TResult? Function(VerifyCodeModel verifyCodeModel)? verify,
    TResult? Function(SignUpModel? signUpModel)? postSignUpModel,
    TResult? Function()? signUp,
    TResult? Function(LoginModel loginModel)? login,
  }) {
    return sendOtpCode?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber)? sendOtpCode,
    TResult Function(String phoneNumber)? reSend,
    TResult Function(VerifyCodeModel verifyCodeModel)? verify,
    TResult Function(SignUpModel? signUpModel)? postSignUpModel,
    TResult Function()? signUp,
    TResult Function(LoginModel loginModel)? login,
    required TResult orElse(),
  }) {
    if (sendOtpCode != null) {
      return sendOtpCode(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SendOtpCode value) sendOtpCode,
    required TResult Function(_ReSend value) reSend,
    required TResult Function(_Verify value) verify,
    required TResult Function(_PostSignUpModel value) postSignUpModel,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_Login value) login,
  }) {
    return sendOtpCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SendOtpCode value)? sendOtpCode,
    TResult? Function(_ReSend value)? reSend,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_PostSignUpModel value)? postSignUpModel,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_Login value)? login,
  }) {
    return sendOtpCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SendOtpCode value)? sendOtpCode,
    TResult Function(_ReSend value)? reSend,
    TResult Function(_Verify value)? verify,
    TResult Function(_PostSignUpModel value)? postSignUpModel,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (sendOtpCode != null) {
      return sendOtpCode(this);
    }
    return orElse();
  }
}

abstract class _SendOtpCode implements AuthEvent {
  const factory _SendOtpCode({required final String phoneNumber}) =
      _$_SendOtpCode;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$_SendOtpCodeCopyWith<_$_SendOtpCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReSendCopyWith<$Res> {
  factory _$$_ReSendCopyWith(_$_ReSend value, $Res Function(_$_ReSend) then) =
      __$$_ReSendCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_ReSendCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ReSend>
    implements _$$_ReSendCopyWith<$Res> {
  __$$_ReSendCopyWithImpl(_$_ReSend _value, $Res Function(_$_ReSend) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_ReSend(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReSend with DiagnosticableTreeMixin implements _ReSend {
  const _$_ReSend({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.reSend(phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.reSend'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReSend &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReSendCopyWith<_$_ReSend> get copyWith =>
      __$$_ReSendCopyWithImpl<_$_ReSend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber) sendOtpCode,
    required TResult Function(String phoneNumber) reSend,
    required TResult Function(VerifyCodeModel verifyCodeModel) verify,
    required TResult Function(SignUpModel? signUpModel) postSignUpModel,
    required TResult Function() signUp,
    required TResult Function(LoginModel loginModel) login,
  }) {
    return reSend(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(String phoneNumber)? sendOtpCode,
    TResult? Function(String phoneNumber)? reSend,
    TResult? Function(VerifyCodeModel verifyCodeModel)? verify,
    TResult? Function(SignUpModel? signUpModel)? postSignUpModel,
    TResult? Function()? signUp,
    TResult? Function(LoginModel loginModel)? login,
  }) {
    return reSend?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber)? sendOtpCode,
    TResult Function(String phoneNumber)? reSend,
    TResult Function(VerifyCodeModel verifyCodeModel)? verify,
    TResult Function(SignUpModel? signUpModel)? postSignUpModel,
    TResult Function()? signUp,
    TResult Function(LoginModel loginModel)? login,
    required TResult orElse(),
  }) {
    if (reSend != null) {
      return reSend(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SendOtpCode value) sendOtpCode,
    required TResult Function(_ReSend value) reSend,
    required TResult Function(_Verify value) verify,
    required TResult Function(_PostSignUpModel value) postSignUpModel,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_Login value) login,
  }) {
    return reSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SendOtpCode value)? sendOtpCode,
    TResult? Function(_ReSend value)? reSend,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_PostSignUpModel value)? postSignUpModel,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_Login value)? login,
  }) {
    return reSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SendOtpCode value)? sendOtpCode,
    TResult Function(_ReSend value)? reSend,
    TResult Function(_Verify value)? verify,
    TResult Function(_PostSignUpModel value)? postSignUpModel,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (reSend != null) {
      return reSend(this);
    }
    return orElse();
  }
}

abstract class _ReSend implements AuthEvent {
  const factory _ReSend({required final String phoneNumber}) = _$_ReSend;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$_ReSendCopyWith<_$_ReSend> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VerifyCopyWith<$Res> {
  factory _$$_VerifyCopyWith(_$_Verify value, $Res Function(_$_Verify) then) =
      __$$_VerifyCopyWithImpl<$Res>;
  @useResult
  $Res call({VerifyCodeModel verifyCodeModel});
}

/// @nodoc
class __$$_VerifyCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Verify>
    implements _$$_VerifyCopyWith<$Res> {
  __$$_VerifyCopyWithImpl(_$_Verify _value, $Res Function(_$_Verify) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifyCodeModel = null,
  }) {
    return _then(_$_Verify(
      verifyCodeModel: null == verifyCodeModel
          ? _value.verifyCodeModel
          : verifyCodeModel // ignore: cast_nullable_to_non_nullable
              as VerifyCodeModel,
    ));
  }
}

/// @nodoc

class _$_Verify with DiagnosticableTreeMixin implements _Verify {
  const _$_Verify({required this.verifyCodeModel});

  @override
  final VerifyCodeModel verifyCodeModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.verify(verifyCodeModel: $verifyCodeModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.verify'))
      ..add(DiagnosticsProperty('verifyCodeModel', verifyCodeModel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Verify &&
            (identical(other.verifyCodeModel, verifyCodeModel) ||
                other.verifyCodeModel == verifyCodeModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verifyCodeModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyCopyWith<_$_Verify> get copyWith =>
      __$$_VerifyCopyWithImpl<_$_Verify>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber) sendOtpCode,
    required TResult Function(String phoneNumber) reSend,
    required TResult Function(VerifyCodeModel verifyCodeModel) verify,
    required TResult Function(SignUpModel? signUpModel) postSignUpModel,
    required TResult Function() signUp,
    required TResult Function(LoginModel loginModel) login,
  }) {
    return verify(verifyCodeModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(String phoneNumber)? sendOtpCode,
    TResult? Function(String phoneNumber)? reSend,
    TResult? Function(VerifyCodeModel verifyCodeModel)? verify,
    TResult? Function(SignUpModel? signUpModel)? postSignUpModel,
    TResult? Function()? signUp,
    TResult? Function(LoginModel loginModel)? login,
  }) {
    return verify?.call(verifyCodeModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber)? sendOtpCode,
    TResult Function(String phoneNumber)? reSend,
    TResult Function(VerifyCodeModel verifyCodeModel)? verify,
    TResult Function(SignUpModel? signUpModel)? postSignUpModel,
    TResult Function()? signUp,
    TResult Function(LoginModel loginModel)? login,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(verifyCodeModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SendOtpCode value) sendOtpCode,
    required TResult Function(_ReSend value) reSend,
    required TResult Function(_Verify value) verify,
    required TResult Function(_PostSignUpModel value) postSignUpModel,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_Login value) login,
  }) {
    return verify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SendOtpCode value)? sendOtpCode,
    TResult? Function(_ReSend value)? reSend,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_PostSignUpModel value)? postSignUpModel,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_Login value)? login,
  }) {
    return verify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SendOtpCode value)? sendOtpCode,
    TResult Function(_ReSend value)? reSend,
    TResult Function(_Verify value)? verify,
    TResult Function(_PostSignUpModel value)? postSignUpModel,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(this);
    }
    return orElse();
  }
}

abstract class _Verify implements AuthEvent {
  const factory _Verify({required final VerifyCodeModel verifyCodeModel}) =
      _$_Verify;

  VerifyCodeModel get verifyCodeModel;
  @JsonKey(ignore: true)
  _$$_VerifyCopyWith<_$_Verify> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostSignUpModelCopyWith<$Res> {
  factory _$$_PostSignUpModelCopyWith(
          _$_PostSignUpModel value, $Res Function(_$_PostSignUpModel) then) =
      __$$_PostSignUpModelCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpModel? signUpModel});
}

/// @nodoc
class __$$_PostSignUpModelCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_PostSignUpModel>
    implements _$$_PostSignUpModelCopyWith<$Res> {
  __$$_PostSignUpModelCopyWithImpl(
      _$_PostSignUpModel _value, $Res Function(_$_PostSignUpModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpModel = freezed,
  }) {
    return _then(_$_PostSignUpModel(
      signUpModel: freezed == signUpModel
          ? _value.signUpModel
          : signUpModel // ignore: cast_nullable_to_non_nullable
              as SignUpModel?,
    ));
  }
}

/// @nodoc

class _$_PostSignUpModel
    with DiagnosticableTreeMixin
    implements _PostSignUpModel {
  const _$_PostSignUpModel({this.signUpModel});

  @override
  final SignUpModel? signUpModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.postSignUpModel(signUpModel: $signUpModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.postSignUpModel'))
      ..add(DiagnosticsProperty('signUpModel', signUpModel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostSignUpModel &&
            (identical(other.signUpModel, signUpModel) ||
                other.signUpModel == signUpModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signUpModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostSignUpModelCopyWith<_$_PostSignUpModel> get copyWith =>
      __$$_PostSignUpModelCopyWithImpl<_$_PostSignUpModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber) sendOtpCode,
    required TResult Function(String phoneNumber) reSend,
    required TResult Function(VerifyCodeModel verifyCodeModel) verify,
    required TResult Function(SignUpModel? signUpModel) postSignUpModel,
    required TResult Function() signUp,
    required TResult Function(LoginModel loginModel) login,
  }) {
    return postSignUpModel(signUpModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(String phoneNumber)? sendOtpCode,
    TResult? Function(String phoneNumber)? reSend,
    TResult? Function(VerifyCodeModel verifyCodeModel)? verify,
    TResult? Function(SignUpModel? signUpModel)? postSignUpModel,
    TResult? Function()? signUp,
    TResult? Function(LoginModel loginModel)? login,
  }) {
    return postSignUpModel?.call(signUpModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber)? sendOtpCode,
    TResult Function(String phoneNumber)? reSend,
    TResult Function(VerifyCodeModel verifyCodeModel)? verify,
    TResult Function(SignUpModel? signUpModel)? postSignUpModel,
    TResult Function()? signUp,
    TResult Function(LoginModel loginModel)? login,
    required TResult orElse(),
  }) {
    if (postSignUpModel != null) {
      return postSignUpModel(signUpModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SendOtpCode value) sendOtpCode,
    required TResult Function(_ReSend value) reSend,
    required TResult Function(_Verify value) verify,
    required TResult Function(_PostSignUpModel value) postSignUpModel,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_Login value) login,
  }) {
    return postSignUpModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SendOtpCode value)? sendOtpCode,
    TResult? Function(_ReSend value)? reSend,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_PostSignUpModel value)? postSignUpModel,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_Login value)? login,
  }) {
    return postSignUpModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SendOtpCode value)? sendOtpCode,
    TResult Function(_ReSend value)? reSend,
    TResult Function(_Verify value)? verify,
    TResult Function(_PostSignUpModel value)? postSignUpModel,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (postSignUpModel != null) {
      return postSignUpModel(this);
    }
    return orElse();
  }
}

abstract class _PostSignUpModel implements AuthEvent {
  const factory _PostSignUpModel({final SignUpModel? signUpModel}) =
      _$_PostSignUpModel;

  SignUpModel? get signUpModel;
  @JsonKey(ignore: true)
  _$$_PostSignUpModelCopyWith<_$_PostSignUpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignUpCopyWith<$Res> {
  factory _$$_SignUpCopyWith(_$_SignUp value, $Res Function(_$_SignUp) then) =
      __$$_SignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignUpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignUp>
    implements _$$_SignUpCopyWith<$Res> {
  __$$_SignUpCopyWithImpl(_$_SignUp _value, $Res Function(_$_SignUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignUp with DiagnosticableTreeMixin implements _SignUp {
  const _$_SignUp();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signUp()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.signUp'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber) sendOtpCode,
    required TResult Function(String phoneNumber) reSend,
    required TResult Function(VerifyCodeModel verifyCodeModel) verify,
    required TResult Function(SignUpModel? signUpModel) postSignUpModel,
    required TResult Function() signUp,
    required TResult Function(LoginModel loginModel) login,
  }) {
    return signUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(String phoneNumber)? sendOtpCode,
    TResult? Function(String phoneNumber)? reSend,
    TResult? Function(VerifyCodeModel verifyCodeModel)? verify,
    TResult? Function(SignUpModel? signUpModel)? postSignUpModel,
    TResult? Function()? signUp,
    TResult? Function(LoginModel loginModel)? login,
  }) {
    return signUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber)? sendOtpCode,
    TResult Function(String phoneNumber)? reSend,
    TResult Function(VerifyCodeModel verifyCodeModel)? verify,
    TResult Function(SignUpModel? signUpModel)? postSignUpModel,
    TResult Function()? signUp,
    TResult Function(LoginModel loginModel)? login,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SendOtpCode value) sendOtpCode,
    required TResult Function(_ReSend value) reSend,
    required TResult Function(_Verify value) verify,
    required TResult Function(_PostSignUpModel value) postSignUpModel,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_Login value) login,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SendOtpCode value)? sendOtpCode,
    TResult? Function(_ReSend value)? reSend,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_PostSignUpModel value)? postSignUpModel,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_Login value)? login,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SendOtpCode value)? sendOtpCode,
    TResult Function(_ReSend value)? reSend,
    TResult Function(_Verify value)? verify,
    TResult Function(_PostSignUpModel value)? postSignUpModel,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthEvent {
  const factory _SignUp() = _$_SignUp;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginModel loginModel});
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginModel = null,
  }) {
    return _then(_$_Login(
      null == loginModel
          ? _value.loginModel
          : loginModel // ignore: cast_nullable_to_non_nullable
              as LoginModel,
    ));
  }
}

/// @nodoc

class _$_Login with DiagnosticableTreeMixin implements _Login {
  const _$_Login(this.loginModel);

  @override
  final LoginModel loginModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.login(loginModel: $loginModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.login'))
      ..add(DiagnosticsProperty('loginModel', loginModel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Login &&
            (identical(other.loginModel, loginModel) ||
                other.loginModel == loginModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      __$$_LoginCopyWithImpl<_$_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber) sendOtpCode,
    required TResult Function(String phoneNumber) reSend,
    required TResult Function(VerifyCodeModel verifyCodeModel) verify,
    required TResult Function(SignUpModel? signUpModel) postSignUpModel,
    required TResult Function() signUp,
    required TResult Function(LoginModel loginModel) login,
  }) {
    return login(loginModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(String phoneNumber)? sendOtpCode,
    TResult? Function(String phoneNumber)? reSend,
    TResult? Function(VerifyCodeModel verifyCodeModel)? verify,
    TResult? Function(SignUpModel? signUpModel)? postSignUpModel,
    TResult? Function()? signUp,
    TResult? Function(LoginModel loginModel)? login,
  }) {
    return login?.call(loginModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber)? sendOtpCode,
    TResult Function(String phoneNumber)? reSend,
    TResult Function(VerifyCodeModel verifyCodeModel)? verify,
    TResult Function(SignUpModel? signUpModel)? postSignUpModel,
    TResult Function()? signUp,
    TResult Function(LoginModel loginModel)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(loginModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SendOtpCode value) sendOtpCode,
    required TResult Function(_ReSend value) reSend,
    required TResult Function(_Verify value) verify,
    required TResult Function(_PostSignUpModel value) postSignUpModel,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SendOtpCode value)? sendOtpCode,
    TResult? Function(_ReSend value)? reSend,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_PostSignUpModel value)? postSignUpModel,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SendOtpCode value)? sendOtpCode,
    TResult Function(_ReSend value)? reSend,
    TResult Function(_Verify value)? verify,
    TResult Function(_PostSignUpModel value)? postSignUpModel,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(final LoginModel loginModel) = _$_Login;

  LoginModel get loginModel;
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  bool get localAuth => throw _privateConstructorUsedError;
  bool get proceedToVerifyCode => throw _privateConstructorUsedError;
  String? get otpErrorText => throw _privateConstructorUsedError;
  SendOTPCodeResponseModel? get authorizeResponseModel =>
      throw _privateConstructorUsedError;
  SignUpModel? get signUpModel => throw _privateConstructorUsedError;
  bool get proceedToSendAgain => throw _privateConstructorUsedError;
  bool get proceedToGetUserInfo => throw _privateConstructorUsedError;
  bool get proceedToHome => throw _privateConstructorUsedError;
  bool get proceedToHomeLogin => throw _privateConstructorUsedError;
  bool get signUpSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool localAuth,
      bool proceedToVerifyCode,
      String? otpErrorText,
      SendOTPCodeResponseModel? authorizeResponseModel,
      SignUpModel? signUpModel,
      bool proceedToSendAgain,
      bool proceedToGetUserInfo,
      bool proceedToHome,
      bool proceedToHomeLogin,
      bool signUpSuccess});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localAuth = null,
    Object? proceedToVerifyCode = null,
    Object? otpErrorText = freezed,
    Object? authorizeResponseModel = freezed,
    Object? signUpModel = freezed,
    Object? proceedToSendAgain = null,
    Object? proceedToGetUserInfo = null,
    Object? proceedToHome = null,
    Object? proceedToHomeLogin = null,
    Object? signUpSuccess = null,
  }) {
    return _then(_value.copyWith(
      localAuth: null == localAuth
          ? _value.localAuth
          : localAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToVerifyCode: null == proceedToVerifyCode
          ? _value.proceedToVerifyCode
          : proceedToVerifyCode // ignore: cast_nullable_to_non_nullable
              as bool,
      otpErrorText: freezed == otpErrorText
          ? _value.otpErrorText
          : otpErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      authorizeResponseModel: freezed == authorizeResponseModel
          ? _value.authorizeResponseModel
          : authorizeResponseModel // ignore: cast_nullable_to_non_nullable
              as SendOTPCodeResponseModel?,
      signUpModel: freezed == signUpModel
          ? _value.signUpModel
          : signUpModel // ignore: cast_nullable_to_non_nullable
              as SignUpModel?,
      proceedToSendAgain: null == proceedToSendAgain
          ? _value.proceedToSendAgain
          : proceedToSendAgain // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToGetUserInfo: null == proceedToGetUserInfo
          ? _value.proceedToGetUserInfo
          : proceedToGetUserInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToHome: null == proceedToHome
          ? _value.proceedToHome
          : proceedToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToHomeLogin: null == proceedToHomeLogin
          ? _value.proceedToHomeLogin
          : proceedToHomeLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpSuccess: null == signUpSuccess
          ? _value.signUpSuccess
          : signUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool localAuth,
      bool proceedToVerifyCode,
      String? otpErrorText,
      SendOTPCodeResponseModel? authorizeResponseModel,
      SignUpModel? signUpModel,
      bool proceedToSendAgain,
      bool proceedToGetUserInfo,
      bool proceedToHome,
      bool proceedToHomeLogin,
      bool signUpSuccess});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localAuth = null,
    Object? proceedToVerifyCode = null,
    Object? otpErrorText = freezed,
    Object? authorizeResponseModel = freezed,
    Object? signUpModel = freezed,
    Object? proceedToSendAgain = null,
    Object? proceedToGetUserInfo = null,
    Object? proceedToHome = null,
    Object? proceedToHomeLogin = null,
    Object? signUpSuccess = null,
  }) {
    return _then(_$_AuthState(
      localAuth: null == localAuth
          ? _value.localAuth
          : localAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToVerifyCode: null == proceedToVerifyCode
          ? _value.proceedToVerifyCode
          : proceedToVerifyCode // ignore: cast_nullable_to_non_nullable
              as bool,
      otpErrorText: freezed == otpErrorText
          ? _value.otpErrorText
          : otpErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      authorizeResponseModel: freezed == authorizeResponseModel
          ? _value.authorizeResponseModel
          : authorizeResponseModel // ignore: cast_nullable_to_non_nullable
              as SendOTPCodeResponseModel?,
      signUpModel: freezed == signUpModel
          ? _value.signUpModel
          : signUpModel // ignore: cast_nullable_to_non_nullable
              as SignUpModel?,
      proceedToSendAgain: null == proceedToSendAgain
          ? _value.proceedToSendAgain
          : proceedToSendAgain // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToGetUserInfo: null == proceedToGetUserInfo
          ? _value.proceedToGetUserInfo
          : proceedToGetUserInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToHome: null == proceedToHome
          ? _value.proceedToHome
          : proceedToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToHomeLogin: null == proceedToHomeLogin
          ? _value.proceedToHomeLogin
          : proceedToHomeLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpSuccess: null == signUpSuccess
          ? _value.signUpSuccess
          : signUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState with DiagnosticableTreeMixin {
  const _$_AuthState(
      {this.localAuth = false,
      this.proceedToVerifyCode = false,
      this.otpErrorText = null,
      this.authorizeResponseModel = null,
      this.signUpModel = null,
      this.proceedToSendAgain = false,
      this.proceedToGetUserInfo = false,
      this.proceedToHome = false,
      this.proceedToHomeLogin = false,
      this.signUpSuccess = false})
      : super._();

  @override
  @JsonKey()
  final bool localAuth;
  @override
  @JsonKey()
  final bool proceedToVerifyCode;
  @override
  @JsonKey()
  final String? otpErrorText;
  @override
  @JsonKey()
  final SendOTPCodeResponseModel? authorizeResponseModel;
  @override
  @JsonKey()
  final SignUpModel? signUpModel;
  @override
  @JsonKey()
  final bool proceedToSendAgain;
  @override
  @JsonKey()
  final bool proceedToGetUserInfo;
  @override
  @JsonKey()
  final bool proceedToHome;
  @override
  @JsonKey()
  final bool proceedToHomeLogin;
  @override
  @JsonKey()
  final bool signUpSuccess;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(localAuth: $localAuth, proceedToVerifyCode: $proceedToVerifyCode, otpErrorText: $otpErrorText, authorizeResponseModel: $authorizeResponseModel, signUpModel: $signUpModel, proceedToSendAgain: $proceedToSendAgain, proceedToGetUserInfo: $proceedToGetUserInfo, proceedToHome: $proceedToHome, proceedToHomeLogin: $proceedToHomeLogin, signUpSuccess: $signUpSuccess)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('localAuth', localAuth))
      ..add(DiagnosticsProperty('proceedToVerifyCode', proceedToVerifyCode))
      ..add(DiagnosticsProperty('otpErrorText', otpErrorText))
      ..add(
          DiagnosticsProperty('authorizeResponseModel', authorizeResponseModel))
      ..add(DiagnosticsProperty('signUpModel', signUpModel))
      ..add(DiagnosticsProperty('proceedToSendAgain', proceedToSendAgain))
      ..add(DiagnosticsProperty('proceedToGetUserInfo', proceedToGetUserInfo))
      ..add(DiagnosticsProperty('proceedToHome', proceedToHome))
      ..add(DiagnosticsProperty('proceedToHomeLogin', proceedToHomeLogin))
      ..add(DiagnosticsProperty('signUpSuccess', signUpSuccess));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.localAuth, localAuth) ||
                other.localAuth == localAuth) &&
            (identical(other.proceedToVerifyCode, proceedToVerifyCode) ||
                other.proceedToVerifyCode == proceedToVerifyCode) &&
            (identical(other.otpErrorText, otpErrorText) ||
                other.otpErrorText == otpErrorText) &&
            (identical(other.authorizeResponseModel, authorizeResponseModel) ||
                other.authorizeResponseModel == authorizeResponseModel) &&
            (identical(other.signUpModel, signUpModel) ||
                other.signUpModel == signUpModel) &&
            (identical(other.proceedToSendAgain, proceedToSendAgain) ||
                other.proceedToSendAgain == proceedToSendAgain) &&
            (identical(other.proceedToGetUserInfo, proceedToGetUserInfo) ||
                other.proceedToGetUserInfo == proceedToGetUserInfo) &&
            (identical(other.proceedToHome, proceedToHome) ||
                other.proceedToHome == proceedToHome) &&
            (identical(other.proceedToHomeLogin, proceedToHomeLogin) ||
                other.proceedToHomeLogin == proceedToHomeLogin) &&
            (identical(other.signUpSuccess, signUpSuccess) ||
                other.signUpSuccess == signUpSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      localAuth,
      proceedToVerifyCode,
      otpErrorText,
      authorizeResponseModel,
      signUpModel,
      proceedToSendAgain,
      proceedToGetUserInfo,
      proceedToHome,
      proceedToHomeLogin,
      signUpSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {final bool localAuth,
      final bool proceedToVerifyCode,
      final String? otpErrorText,
      final SendOTPCodeResponseModel? authorizeResponseModel,
      final SignUpModel? signUpModel,
      final bool proceedToSendAgain,
      final bool proceedToGetUserInfo,
      final bool proceedToHome,
      final bool proceedToHomeLogin,
      final bool signUpSuccess}) = _$_AuthState;
  const _AuthState._() : super._();

  @override
  bool get localAuth;
  @override
  bool get proceedToVerifyCode;
  @override
  String? get otpErrorText;
  @override
  SendOTPCodeResponseModel? get authorizeResponseModel;
  @override
  SignUpModel? get signUpModel;
  @override
  bool get proceedToSendAgain;
  @override
  bool get proceedToGetUserInfo;
  @override
  bool get proceedToHome;
  @override
  bool get proceedToHomeLogin;
  @override
  bool get signUpSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
