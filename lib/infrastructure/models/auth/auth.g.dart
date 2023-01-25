// GENERATED CODE - DO NOT MODIFY BY HAND

part of barber_sign_up_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SendOTPModel> _$sendOTPModelSerializer =
    new _$SendOTPModelSerializer();
Serializer<SendOTPCodeResponseModel> _$sendOTPCodeResponseModelSerializer =
    new _$SendOTPCodeResponseModelSerializer();
Serializer<VerifyCodeModel> _$verifyCodeModelSerializer =
    new _$VerifyCodeModelSerializer();
Serializer<VerifiedSuccessModel> _$verifiedSuccessModelSerializer =
    new _$VerifiedSuccessModelSerializer();
Serializer<SuccessResponseModel> _$successResponseModelSerializer =
    new _$SuccessResponseModelSerializer();
Serializer<ErrorResponseModel> _$errorResponseModelSerializer =
    new _$ErrorResponseModelSerializer();
Serializer<SuccessVerifyDataResponseModel>
    _$successVerifyDataResponseModelSerializer =
    new _$SuccessVerifyDataResponseModelSerializer();
Serializer<SignUpModel> _$signUpModelSerializer = new _$SignUpModelSerializer();
Serializer<SignUpActivityModel> _$signUpActivityModelSerializer =
    new _$SignUpActivityModelSerializer();
Serializer<LoginModel> _$loginModelSerializer = new _$LoginModelSerializer();
Serializer<VerifiedExistsSuccessModel> _$verifiedExistsSuccessModelSerializer =
    new _$VerifiedExistsSuccessModelSerializer();
Serializer<SuccessLoginResponseModel> _$successLoginResponseModelSerializer =
    new _$SuccessLoginResponseModelSerializer();

class _$SendOTPModelSerializer implements StructuredSerializer<SendOTPModel> {
  @override
  final Iterable<Type> types = const [SendOTPModel, _$SendOTPModel];
  @override
  final String wireName = 'SendOTPModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, SendOTPModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SendOTPModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SendOTPModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SendOTPCodeResponseModelSerializer
    implements StructuredSerializer<SendOTPCodeResponseModel> {
  @override
  final Iterable<Type> types = const [
    SendOTPCodeResponseModel,
    _$SendOTPCodeResponseModel
  ];
  @override
  final String wireName = 'SendOTPCodeResponseModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SendOTPCodeResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.success;
    if (value != null) {
      result
        ..add('success')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ErrorResponseModel)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SuccessResponseModel)));
    }
    return result;
  }

  @override
  SendOTPCodeResponseModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SendOTPCodeResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ErrorResponseModel))!
              as ErrorResponseModel);
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SuccessResponseModel))!
              as SuccessResponseModel);
          break;
      }
    }

    return result.build();
  }
}

class _$VerifyCodeModelSerializer
    implements StructuredSerializer<VerifyCodeModel> {
  @override
  final Iterable<Type> types = const [VerifyCodeModel, _$VerifyCodeModel];
  @override
  final String wireName = 'VerifyCodeModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, VerifyCodeModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  VerifyCodeModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VerifyCodeModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$VerifiedSuccessModelSerializer
    implements StructuredSerializer<VerifiedSuccessModel> {
  @override
  final Iterable<Type> types = const [
    VerifiedSuccessModel,
    _$VerifiedSuccessModel
  ];
  @override
  final String wireName = 'VerifiedSuccessModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, VerifiedSuccessModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.success;
    if (value != null) {
      result
        ..add('success')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ErrorResponseModel)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SuccessVerifyDataResponseModel)));
    }
    return result;
  }

  @override
  VerifiedSuccessModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VerifiedSuccessModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ErrorResponseModel))!
              as ErrorResponseModel);
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(SuccessVerifyDataResponseModel))!
              as SuccessVerifyDataResponseModel);
          break;
      }
    }

    return result.build();
  }
}

class _$SuccessResponseModelSerializer
    implements StructuredSerializer<SuccessResponseModel> {
  @override
  final Iterable<Type> types = const [
    SuccessResponseModel,
    _$SuccessResponseModel
  ];
  @override
  final String wireName = 'SuccessResponseModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SuccessResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SuccessResponseModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SuccessResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ErrorResponseModelSerializer
    implements StructuredSerializer<ErrorResponseModel> {
  @override
  final Iterable<Type> types = const [ErrorResponseModel, _$ErrorResponseModel];
  @override
  final String wireName = 'ErrorResponseModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ErrorResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.errorCode;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ErrorResponseModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ErrorResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'code':
          result.errorCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$SuccessVerifyDataResponseModelSerializer
    implements StructuredSerializer<SuccessVerifyDataResponseModel> {
  @override
  final Iterable<Type> types = const [
    SuccessVerifyDataResponseModel,
    _$SuccessVerifyDataResponseModel
  ];
  @override
  final String wireName = 'SuccessVerifyDataResponseModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SuccessVerifyDataResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.exists;
    if (value != null) {
      result
        ..add('exists')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  SuccessVerifyDataResponseModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SuccessVerifyDataResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'exists':
          result.exists = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$SignUpModelSerializer implements StructuredSerializer<SignUpModel> {
  @override
  final Iterable<Type> types = const [SignUpModel, _$SignUpModel];
  @override
  final String wireName = 'SignUpModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, SignUpModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullName;
    if (value != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.birthday;
    if (value != null) {
      result
        ..add('birthday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.passwordConfirmation;
    if (value != null) {
      result
        ..add('password_confirmation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SignUpModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SignUpModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password_confirmation':
          result.passwordConfirmation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SignUpActivityModelSerializer
    implements StructuredSerializer<SignUpActivityModel> {
  @override
  final Iterable<Type> types = const [
    SignUpActivityModel,
    _$SignUpActivityModel
  ];
  @override
  final String wireName = 'SignUpActivityModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SignUpActivityModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SignUpActivityModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SignUpActivityModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginModelSerializer implements StructuredSerializer<LoginModel> {
  @override
  final Iterable<Type> types = const [LoginModel, _$LoginModel];
  @override
  final String wireName = 'LoginModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, LoginModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LoginModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$VerifiedExistsSuccessModelSerializer
    implements StructuredSerializer<VerifiedExistsSuccessModel> {
  @override
  final Iterable<Type> types = const [
    VerifiedExistsSuccessModel,
    _$VerifiedExistsSuccessModel
  ];
  @override
  final String wireName = 'VerifiedExistsSuccessModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, VerifiedExistsSuccessModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.success;
    if (value != null) {
      result
        ..add('success')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ErrorResponseModel)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SuccessLoginResponseModel)));
    }
    return result;
  }

  @override
  VerifiedExistsSuccessModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VerifiedExistsSuccessModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ErrorResponseModel))!
              as ErrorResponseModel);
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SuccessLoginResponseModel))!
              as SuccessLoginResponseModel);
          break;
      }
    }

    return result.build();
  }
}

class _$SuccessLoginResponseModelSerializer
    implements StructuredSerializer<SuccessLoginResponseModel> {
  @override
  final Iterable<Type> types = const [
    SuccessLoginResponseModel,
    _$SuccessLoginResponseModel
  ];
  @override
  final String wireName = 'SuccessLoginResponseModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SuccessLoginResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.token;
    if (value != null) {
      result
        ..add('token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SuccessLoginResponseModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SuccessLoginResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SendOTPModel extends SendOTPModel {
  @override
  final String? username;

  factory _$SendOTPModel([void Function(SendOTPModelBuilder)? updates]) =>
      (new SendOTPModelBuilder()..update(updates))._build();

  _$SendOTPModel._({this.username}) : super._();

  @override
  SendOTPModel rebuild(void Function(SendOTPModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendOTPModelBuilder toBuilder() => new SendOTPModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendOTPModel && username == other.username;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendOTPModel')
          ..add('username', username))
        .toString();
  }
}

class SendOTPModelBuilder
    implements Builder<SendOTPModel, SendOTPModelBuilder> {
  _$SendOTPModel? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  SendOTPModelBuilder();

  SendOTPModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendOTPModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendOTPModel;
  }

  @override
  void update(void Function(SendOTPModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendOTPModel build() => _build();

  _$SendOTPModel _build() {
    final _$result = _$v ?? new _$SendOTPModel._(username: username);
    replace(_$result);
    return _$result;
  }
}

class _$SendOTPCodeResponseModel extends SendOTPCodeResponseModel {
  @override
  final bool? success;
  @override
  final ErrorResponseModel? error;
  @override
  final SuccessResponseModel? data;

  factory _$SendOTPCodeResponseModel(
          [void Function(SendOTPCodeResponseModelBuilder)? updates]) =>
      (new SendOTPCodeResponseModelBuilder()..update(updates))._build();

  _$SendOTPCodeResponseModel._({this.success, this.error, this.data})
      : super._();

  @override
  SendOTPCodeResponseModel rebuild(
          void Function(SendOTPCodeResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendOTPCodeResponseModelBuilder toBuilder() =>
      new SendOTPCodeResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendOTPCodeResponseModel &&
        success == other.success &&
        error == other.error &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendOTPCodeResponseModel')
          ..add('success', success)
          ..add('error', error)
          ..add('data', data))
        .toString();
  }
}

class SendOTPCodeResponseModelBuilder
    implements
        Builder<SendOTPCodeResponseModel, SendOTPCodeResponseModelBuilder> {
  _$SendOTPCodeResponseModel? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ErrorResponseModelBuilder? _error;
  ErrorResponseModelBuilder get error =>
      _$this._error ??= new ErrorResponseModelBuilder();
  set error(ErrorResponseModelBuilder? error) => _$this._error = error;

  SuccessResponseModelBuilder? _data;
  SuccessResponseModelBuilder get data =>
      _$this._data ??= new SuccessResponseModelBuilder();
  set data(SuccessResponseModelBuilder? data) => _$this._data = data;

  SendOTPCodeResponseModelBuilder();

  SendOTPCodeResponseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _error = $v.error?.toBuilder();
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendOTPCodeResponseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendOTPCodeResponseModel;
  }

  @override
  void update(void Function(SendOTPCodeResponseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendOTPCodeResponseModel build() => _build();

  _$SendOTPCodeResponseModel _build() {
    _$SendOTPCodeResponseModel _$result;
    try {
      _$result = _$v ??
          new _$SendOTPCodeResponseModel._(
              success: success, error: _error?.build(), data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SendOTPCodeResponseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$VerifyCodeModel extends VerifyCodeModel {
  @override
  final String? code;
  @override
  final String? username;

  factory _$VerifyCodeModel([void Function(VerifyCodeModelBuilder)? updates]) =>
      (new VerifyCodeModelBuilder()..update(updates))._build();

  _$VerifyCodeModel._({this.code, this.username}) : super._();

  @override
  VerifyCodeModel rebuild(void Function(VerifyCodeModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyCodeModelBuilder toBuilder() =>
      new VerifyCodeModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyCodeModel &&
        code == other.code &&
        username == other.username;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerifyCodeModel')
          ..add('code', code)
          ..add('username', username))
        .toString();
  }
}

class VerifyCodeModelBuilder
    implements Builder<VerifyCodeModel, VerifyCodeModelBuilder> {
  _$VerifyCodeModel? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  VerifyCodeModelBuilder();

  VerifyCodeModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyCodeModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifyCodeModel;
  }

  @override
  void update(void Function(VerifyCodeModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyCodeModel build() => _build();

  _$VerifyCodeModel _build() {
    final _$result =
        _$v ?? new _$VerifyCodeModel._(code: code, username: username);
    replace(_$result);
    return _$result;
  }
}

class _$VerifiedSuccessModel extends VerifiedSuccessModel {
  @override
  final bool? success;
  @override
  final ErrorResponseModel? error;
  @override
  final SuccessVerifyDataResponseModel? data;

  factory _$VerifiedSuccessModel(
          [void Function(VerifiedSuccessModelBuilder)? updates]) =>
      (new VerifiedSuccessModelBuilder()..update(updates))._build();

  _$VerifiedSuccessModel._({this.success, this.error, this.data}) : super._();

  @override
  VerifiedSuccessModel rebuild(
          void Function(VerifiedSuccessModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedSuccessModelBuilder toBuilder() =>
      new VerifiedSuccessModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedSuccessModel &&
        success == other.success &&
        error == other.error &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerifiedSuccessModel')
          ..add('success', success)
          ..add('error', error)
          ..add('data', data))
        .toString();
  }
}

class VerifiedSuccessModelBuilder
    implements Builder<VerifiedSuccessModel, VerifiedSuccessModelBuilder> {
  _$VerifiedSuccessModel? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ErrorResponseModelBuilder? _error;
  ErrorResponseModelBuilder get error =>
      _$this._error ??= new ErrorResponseModelBuilder();
  set error(ErrorResponseModelBuilder? error) => _$this._error = error;

  SuccessVerifyDataResponseModelBuilder? _data;
  SuccessVerifyDataResponseModelBuilder get data =>
      _$this._data ??= new SuccessVerifyDataResponseModelBuilder();
  set data(SuccessVerifyDataResponseModelBuilder? data) => _$this._data = data;

  VerifiedSuccessModelBuilder();

  VerifiedSuccessModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _error = $v.error?.toBuilder();
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedSuccessModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedSuccessModel;
  }

  @override
  void update(void Function(VerifiedSuccessModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedSuccessModel build() => _build();

  _$VerifiedSuccessModel _build() {
    _$VerifiedSuccessModel _$result;
    try {
      _$result = _$v ??
          new _$VerifiedSuccessModel._(
              success: success, error: _error?.build(), data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VerifiedSuccessModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SuccessResponseModel extends SuccessResponseModel {
  @override
  final String? message;

  factory _$SuccessResponseModel(
          [void Function(SuccessResponseModelBuilder)? updates]) =>
      (new SuccessResponseModelBuilder()..update(updates))._build();

  _$SuccessResponseModel._({this.message}) : super._();

  @override
  SuccessResponseModel rebuild(
          void Function(SuccessResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessResponseModelBuilder toBuilder() =>
      new SuccessResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuccessResponseModel && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SuccessResponseModel')
          ..add('message', message))
        .toString();
  }
}

class SuccessResponseModelBuilder
    implements Builder<SuccessResponseModel, SuccessResponseModelBuilder> {
  _$SuccessResponseModel? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SuccessResponseModelBuilder();

  SuccessResponseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuccessResponseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuccessResponseModel;
  }

  @override
  void update(void Function(SuccessResponseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SuccessResponseModel build() => _build();

  _$SuccessResponseModel _build() {
    final _$result = _$v ?? new _$SuccessResponseModel._(message: message);
    replace(_$result);
    return _$result;
  }
}

class _$ErrorResponseModel extends ErrorResponseModel {
  @override
  final String? message;
  @override
  final int? errorCode;

  factory _$ErrorResponseModel(
          [void Function(ErrorResponseModelBuilder)? updates]) =>
      (new ErrorResponseModelBuilder()..update(updates))._build();

  _$ErrorResponseModel._({this.message, this.errorCode}) : super._();

  @override
  ErrorResponseModel rebuild(
          void Function(ErrorResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorResponseModelBuilder toBuilder() =>
      new ErrorResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorResponseModel &&
        message == other.message &&
        errorCode == other.errorCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, errorCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorResponseModel')
          ..add('message', message)
          ..add('errorCode', errorCode))
        .toString();
  }
}

class ErrorResponseModelBuilder
    implements Builder<ErrorResponseModel, ErrorResponseModelBuilder> {
  _$ErrorResponseModel? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _errorCode;
  int? get errorCode => _$this._errorCode;
  set errorCode(int? errorCode) => _$this._errorCode = errorCode;

  ErrorResponseModelBuilder();

  ErrorResponseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _errorCode = $v.errorCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorResponseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorResponseModel;
  }

  @override
  void update(void Function(ErrorResponseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorResponseModel build() => _build();

  _$ErrorResponseModel _build() {
    final _$result = _$v ??
        new _$ErrorResponseModel._(message: message, errorCode: errorCode);
    replace(_$result);
    return _$result;
  }
}

class _$SuccessVerifyDataResponseModel extends SuccessVerifyDataResponseModel {
  @override
  final bool? exists;

  factory _$SuccessVerifyDataResponseModel(
          [void Function(SuccessVerifyDataResponseModelBuilder)? updates]) =>
      (new SuccessVerifyDataResponseModelBuilder()..update(updates))._build();

  _$SuccessVerifyDataResponseModel._({this.exists}) : super._();

  @override
  SuccessVerifyDataResponseModel rebuild(
          void Function(SuccessVerifyDataResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessVerifyDataResponseModelBuilder toBuilder() =>
      new SuccessVerifyDataResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuccessVerifyDataResponseModel && exists == other.exists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SuccessVerifyDataResponseModel')
          ..add('exists', exists))
        .toString();
  }
}

class SuccessVerifyDataResponseModelBuilder
    implements
        Builder<SuccessVerifyDataResponseModel,
            SuccessVerifyDataResponseModelBuilder> {
  _$SuccessVerifyDataResponseModel? _$v;

  bool? _exists;
  bool? get exists => _$this._exists;
  set exists(bool? exists) => _$this._exists = exists;

  SuccessVerifyDataResponseModelBuilder();

  SuccessVerifyDataResponseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exists = $v.exists;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuccessVerifyDataResponseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuccessVerifyDataResponseModel;
  }

  @override
  void update(void Function(SuccessVerifyDataResponseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SuccessVerifyDataResponseModel build() => _build();

  _$SuccessVerifyDataResponseModel _build() {
    final _$result =
        _$v ?? new _$SuccessVerifyDataResponseModel._(exists: exists);
    replace(_$result);
    return _$result;
  }
}

class _$SignUpModel extends SignUpModel {
  @override
  final String? username;
  @override
  final String? code;
  @override
  final String? fullName;
  @override
  final String? birthday;
  @override
  final String? type;
  @override
  final String? password;
  @override
  final String? passwordConfirmation;

  factory _$SignUpModel([void Function(SignUpModelBuilder)? updates]) =>
      (new SignUpModelBuilder()..update(updates))._build();

  _$SignUpModel._(
      {this.username,
      this.code,
      this.fullName,
      this.birthday,
      this.type,
      this.password,
      this.passwordConfirmation})
      : super._();

  @override
  SignUpModel rebuild(void Function(SignUpModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpModelBuilder toBuilder() => new SignUpModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpModel &&
        username == other.username &&
        code == other.code &&
        fullName == other.fullName &&
        birthday == other.birthday &&
        type == other.type &&
        password == other.password &&
        passwordConfirmation == other.passwordConfirmation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, birthday.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, passwordConfirmation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignUpModel')
          ..add('username', username)
          ..add('code', code)
          ..add('fullName', fullName)
          ..add('birthday', birthday)
          ..add('type', type)
          ..add('password', password)
          ..add('passwordConfirmation', passwordConfirmation))
        .toString();
  }
}

class SignUpModelBuilder implements Builder<SignUpModel, SignUpModelBuilder> {
  _$SignUpModel? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _birthday;
  String? get birthday => _$this._birthday;
  set birthday(String? birthday) => _$this._birthday = birthday;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _passwordConfirmation;
  String? get passwordConfirmation => _$this._passwordConfirmation;
  set passwordConfirmation(String? passwordConfirmation) =>
      _$this._passwordConfirmation = passwordConfirmation;

  SignUpModelBuilder();

  SignUpModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _code = $v.code;
      _fullName = $v.fullName;
      _birthday = $v.birthday;
      _type = $v.type;
      _password = $v.password;
      _passwordConfirmation = $v.passwordConfirmation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignUpModel;
  }

  @override
  void update(void Function(SignUpModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpModel build() => _build();

  _$SignUpModel _build() {
    final _$result = _$v ??
        new _$SignUpModel._(
            username: username,
            code: code,
            fullName: fullName,
            birthday: birthday,
            type: type,
            password: password,
            passwordConfirmation: passwordConfirmation);
    replace(_$result);
    return _$result;
  }
}

class _$SignUpActivityModel extends SignUpActivityModel {
  @override
  final String? id;
  @override
  final String? name;

  factory _$SignUpActivityModel(
          [void Function(SignUpActivityModelBuilder)? updates]) =>
      (new SignUpActivityModelBuilder()..update(updates))._build();

  _$SignUpActivityModel._({this.id, this.name}) : super._();

  @override
  SignUpActivityModel rebuild(
          void Function(SignUpActivityModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpActivityModelBuilder toBuilder() =>
      new SignUpActivityModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpActivityModel && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignUpActivityModel')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class SignUpActivityModelBuilder
    implements Builder<SignUpActivityModel, SignUpActivityModelBuilder> {
  _$SignUpActivityModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  SignUpActivityModelBuilder();

  SignUpActivityModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpActivityModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignUpActivityModel;
  }

  @override
  void update(void Function(SignUpActivityModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpActivityModel build() => _build();

  _$SignUpActivityModel _build() {
    final _$result = _$v ?? new _$SignUpActivityModel._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

class _$LoginModel extends LoginModel {
  @override
  final String? code;
  @override
  final String? username;
  @override
  final String? password;

  factory _$LoginModel([void Function(LoginModelBuilder)? updates]) =>
      (new LoginModelBuilder()..update(updates))._build();

  _$LoginModel._({this.code, this.username, this.password}) : super._();

  @override
  LoginModel rebuild(void Function(LoginModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginModelBuilder toBuilder() => new LoginModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginModel &&
        code == other.code &&
        username == other.username &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginModel')
          ..add('code', code)
          ..add('username', username)
          ..add('password', password))
        .toString();
  }
}

class LoginModelBuilder implements Builder<LoginModel, LoginModelBuilder> {
  _$LoginModel? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  LoginModelBuilder();

  LoginModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _username = $v.username;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginModel;
  }

  @override
  void update(void Function(LoginModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginModel build() => _build();

  _$LoginModel _build() {
    final _$result = _$v ??
        new _$LoginModel._(code: code, username: username, password: password);
    replace(_$result);
    return _$result;
  }
}

class _$VerifiedExistsSuccessModel extends VerifiedExistsSuccessModel {
  @override
  final bool? success;
  @override
  final ErrorResponseModel? error;
  @override
  final SuccessLoginResponseModel? data;

  factory _$VerifiedExistsSuccessModel(
          [void Function(VerifiedExistsSuccessModelBuilder)? updates]) =>
      (new VerifiedExistsSuccessModelBuilder()..update(updates))._build();

  _$VerifiedExistsSuccessModel._({this.success, this.error, this.data})
      : super._();

  @override
  VerifiedExistsSuccessModel rebuild(
          void Function(VerifiedExistsSuccessModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedExistsSuccessModelBuilder toBuilder() =>
      new VerifiedExistsSuccessModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedExistsSuccessModel &&
        success == other.success &&
        error == other.error &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerifiedExistsSuccessModel')
          ..add('success', success)
          ..add('error', error)
          ..add('data', data))
        .toString();
  }
}

class VerifiedExistsSuccessModelBuilder
    implements
        Builder<VerifiedExistsSuccessModel, VerifiedExistsSuccessModelBuilder> {
  _$VerifiedExistsSuccessModel? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ErrorResponseModelBuilder? _error;
  ErrorResponseModelBuilder get error =>
      _$this._error ??= new ErrorResponseModelBuilder();
  set error(ErrorResponseModelBuilder? error) => _$this._error = error;

  SuccessLoginResponseModelBuilder? _data;
  SuccessLoginResponseModelBuilder get data =>
      _$this._data ??= new SuccessLoginResponseModelBuilder();
  set data(SuccessLoginResponseModelBuilder? data) => _$this._data = data;

  VerifiedExistsSuccessModelBuilder();

  VerifiedExistsSuccessModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _error = $v.error?.toBuilder();
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedExistsSuccessModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedExistsSuccessModel;
  }

  @override
  void update(void Function(VerifiedExistsSuccessModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedExistsSuccessModel build() => _build();

  _$VerifiedExistsSuccessModel _build() {
    _$VerifiedExistsSuccessModel _$result;
    try {
      _$result = _$v ??
          new _$VerifiedExistsSuccessModel._(
              success: success, error: _error?.build(), data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VerifiedExistsSuccessModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SuccessLoginResponseModel extends SuccessLoginResponseModel {
  @override
  final String? message;
  @override
  final String? token;

  factory _$SuccessLoginResponseModel(
          [void Function(SuccessLoginResponseModelBuilder)? updates]) =>
      (new SuccessLoginResponseModelBuilder()..update(updates))._build();

  _$SuccessLoginResponseModel._({this.message, this.token}) : super._();

  @override
  SuccessLoginResponseModel rebuild(
          void Function(SuccessLoginResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessLoginResponseModelBuilder toBuilder() =>
      new SuccessLoginResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuccessLoginResponseModel &&
        message == other.message &&
        token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SuccessLoginResponseModel')
          ..add('message', message)
          ..add('token', token))
        .toString();
  }
}

class SuccessLoginResponseModelBuilder
    implements
        Builder<SuccessLoginResponseModel, SuccessLoginResponseModelBuilder> {
  _$SuccessLoginResponseModel? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  SuccessLoginResponseModelBuilder();

  SuccessLoginResponseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuccessLoginResponseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuccessLoginResponseModel;
  }

  @override
  void update(void Function(SuccessLoginResponseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SuccessLoginResponseModel build() => _build();

  _$SuccessLoginResponseModel _build() {
    final _$result = _$v ??
        new _$SuccessLoginResponseModel._(message: message, token: token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
