// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MeResponseModel> _$meResponseModelSerializer =
    new _$MeResponseModelSerializer();
Serializer<MeDataModel> _$meDataModelSerializer = new _$MeDataModelSerializer();
Serializer<MeUserModel> _$meUserModelSerializer = new _$MeUserModelSerializer();

class _$MeResponseModelSerializer
    implements StructuredSerializer<MeResponseModel> {
  @override
  final Iterable<Type> types = const [MeResponseModel, _$MeResponseModel];
  @override
  final String wireName = 'MeResponseModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MeResponseModel object,
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
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(MeDataModel)));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ErrorResponseModel)));
    }
    return result;
  }

  @override
  MeResponseModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MeResponseModelBuilder();

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
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(MeDataModel))! as MeDataModel);
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ErrorResponseModel))!
              as ErrorResponseModel);
          break;
      }
    }

    return result.build();
  }
}

class _$MeDataModelSerializer implements StructuredSerializer<MeDataModel> {
  @override
  final Iterable<Type> types = const [MeDataModel, _$MeDataModel];
  @override
  final String wireName = 'MeDataModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MeDataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(MeUserModel)));
    }
    return result;
  }

  @override
  MeDataModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MeDataModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(MeUserModel))! as MeUserModel);
          break;
      }
    }

    return result.build();
  }
}

class _$MeUserModelSerializer implements StructuredSerializer<MeUserModel> {
  @override
  final Iterable<Type> types = const [MeUserModel, _$MeUserModel];
  @override
  final String wireName = 'MeUserModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MeUserModel object,
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
    value = object.birthday;
    if (value != null) {
      result
        ..add('birthday')
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
    return result;
  }

  @override
  MeUserModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MeUserModelBuilder();

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
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$MeResponseModel extends MeResponseModel {
  @override
  final bool? success;
  @override
  final MeDataModel? data;
  @override
  final ErrorResponseModel? error;

  factory _$MeResponseModel([void Function(MeResponseModelBuilder)? updates]) =>
      (new MeResponseModelBuilder()..update(updates))._build();

  _$MeResponseModel._({this.success, this.data, this.error}) : super._();

  @override
  MeResponseModel rebuild(void Function(MeResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeResponseModelBuilder toBuilder() =>
      new MeResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeResponseModel &&
        success == other.success &&
        data == other.data &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MeResponseModel')
          ..add('success', success)
          ..add('data', data)
          ..add('error', error))
        .toString();
  }
}

class MeResponseModelBuilder
    implements Builder<MeResponseModel, MeResponseModelBuilder> {
  _$MeResponseModel? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  MeDataModelBuilder? _data;
  MeDataModelBuilder get data => _$this._data ??= new MeDataModelBuilder();
  set data(MeDataModelBuilder? data) => _$this._data = data;

  ErrorResponseModelBuilder? _error;
  ErrorResponseModelBuilder get error =>
      _$this._error ??= new ErrorResponseModelBuilder();
  set error(ErrorResponseModelBuilder? error) => _$this._error = error;

  MeResponseModelBuilder();

  MeResponseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _error = $v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeResponseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MeResponseModel;
  }

  @override
  void update(void Function(MeResponseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MeResponseModel build() => _build();

  _$MeResponseModel _build() {
    _$MeResponseModel _$result;
    try {
      _$result = _$v ??
          new _$MeResponseModel._(
              success: success, data: _data?.build(), error: _error?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MeResponseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MeDataModel extends MeDataModel {
  @override
  final MeUserModel? user;

  factory _$MeDataModel([void Function(MeDataModelBuilder)? updates]) =>
      (new MeDataModelBuilder()..update(updates))._build();

  _$MeDataModel._({this.user}) : super._();

  @override
  MeDataModel rebuild(void Function(MeDataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeDataModelBuilder toBuilder() => new MeDataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeDataModel && user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MeDataModel')..add('user', user))
        .toString();
  }
}

class MeDataModelBuilder implements Builder<MeDataModel, MeDataModelBuilder> {
  _$MeDataModel? _$v;

  MeUserModelBuilder? _user;
  MeUserModelBuilder get user => _$this._user ??= new MeUserModelBuilder();
  set user(MeUserModelBuilder? user) => _$this._user = user;

  MeDataModelBuilder();

  MeDataModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeDataModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MeDataModel;
  }

  @override
  void update(void Function(MeDataModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MeDataModel build() => _build();

  _$MeDataModel _build() {
    _$MeDataModel _$result;
    try {
      _$result = _$v ?? new _$MeDataModel._(user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MeDataModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MeUserModel extends MeUserModel {
  @override
  final String? username;
  @override
  final String? birthday;
  @override
  final String? fullName;

  factory _$MeUserModel([void Function(MeUserModelBuilder)? updates]) =>
      (new MeUserModelBuilder()..update(updates))._build();

  _$MeUserModel._({this.username, this.birthday, this.fullName}) : super._();

  @override
  MeUserModel rebuild(void Function(MeUserModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeUserModelBuilder toBuilder() => new MeUserModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeUserModel &&
        username == other.username &&
        birthday == other.birthday &&
        fullName == other.fullName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, birthday.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MeUserModel')
          ..add('username', username)
          ..add('birthday', birthday)
          ..add('fullName', fullName))
        .toString();
  }
}

class MeUserModelBuilder implements Builder<MeUserModel, MeUserModelBuilder> {
  _$MeUserModel? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _birthday;
  String? get birthday => _$this._birthday;
  set birthday(String? birthday) => _$this._birthday = birthday;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  MeUserModelBuilder();

  MeUserModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _birthday = $v.birthday;
      _fullName = $v.fullName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeUserModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MeUserModel;
  }

  @override
  void update(void Function(MeUserModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MeUserModel build() => _build();

  _$MeUserModel _build() {
    final _$result = _$v ??
        new _$MeUserModel._(
            username: username, birthday: birthday, fullName: fullName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
