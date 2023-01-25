// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RegionsModel> _$regionsModelSerializer =
    new _$RegionsModelSerializer();
Serializer<RegionsDataModel> _$regionsDataModelSerializer =
    new _$RegionsDataModelSerializer();
Serializer<RegionsDataResModel> _$regionsDataResModelSerializer =
    new _$RegionsDataResModelSerializer();

class _$RegionsModelSerializer implements StructuredSerializer<RegionsModel> {
  @override
  final Iterable<Type> types = const [RegionsModel, _$RegionsModel];
  @override
  final String wireName = 'RegionsModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, RegionsModel object,
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
            specifiedType: const FullType(RegionsDataModel)));
    }
    return result;
  }

  @override
  RegionsModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegionsModelBuilder();

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
                  specifiedType: const FullType(RegionsDataModel))!
              as RegionsDataModel);
          break;
      }
    }

    return result.build();
  }
}

class _$RegionsDataModelSerializer
    implements StructuredSerializer<RegionsDataModel> {
  @override
  final Iterable<Type> types = const [RegionsDataModel, _$RegionsDataModel];
  @override
  final String wireName = 'RegionsDataModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, RegionsDataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.regions;
    if (value != null) {
      result
        ..add('regions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(RegionsDataResModel)])));
    }
    return result;
  }

  @override
  RegionsDataModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegionsDataModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'regions':
          result.regions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(RegionsDataResModel)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$RegionsDataResModelSerializer
    implements StructuredSerializer<RegionsDataResModel> {
  @override
  final Iterable<Type> types = const [
    RegionsDataResModel,
    _$RegionsDataResModel
  ];
  @override
  final String wireName = 'RegionsDataResModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RegionsDataResModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  RegionsDataResModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegionsDataResModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$RegionsModel extends RegionsModel {
  @override
  final bool? success;
  @override
  final ErrorResponseModel? error;
  @override
  final RegionsDataModel? data;

  factory _$RegionsModel([void Function(RegionsModelBuilder)? updates]) =>
      (new RegionsModelBuilder()..update(updates))._build();

  _$RegionsModel._({this.success, this.error, this.data}) : super._();

  @override
  RegionsModel rebuild(void Function(RegionsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionsModelBuilder toBuilder() => new RegionsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionsModel &&
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
    return (newBuiltValueToStringHelper(r'RegionsModel')
          ..add('success', success)
          ..add('error', error)
          ..add('data', data))
        .toString();
  }
}

class RegionsModelBuilder
    implements Builder<RegionsModel, RegionsModelBuilder> {
  _$RegionsModel? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ErrorResponseModelBuilder? _error;
  ErrorResponseModelBuilder get error =>
      _$this._error ??= new ErrorResponseModelBuilder();
  set error(ErrorResponseModelBuilder? error) => _$this._error = error;

  RegionsDataModelBuilder? _data;
  RegionsDataModelBuilder get data =>
      _$this._data ??= new RegionsDataModelBuilder();
  set data(RegionsDataModelBuilder? data) => _$this._data = data;

  RegionsModelBuilder();

  RegionsModelBuilder get _$this {
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
  void replace(RegionsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegionsModel;
  }

  @override
  void update(void Function(RegionsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionsModel build() => _build();

  _$RegionsModel _build() {
    _$RegionsModel _$result;
    try {
      _$result = _$v ??
          new _$RegionsModel._(
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
            r'RegionsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$RegionsDataModel extends RegionsDataModel {
  @override
  final BuiltList<RegionsDataResModel?>? regions;

  factory _$RegionsDataModel(
          [void Function(RegionsDataModelBuilder)? updates]) =>
      (new RegionsDataModelBuilder()..update(updates))._build();

  _$RegionsDataModel._({this.regions}) : super._();

  @override
  RegionsDataModel rebuild(void Function(RegionsDataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionsDataModelBuilder toBuilder() =>
      new RegionsDataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionsDataModel && regions == other.regions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionsDataModel')
          ..add('regions', regions))
        .toString();
  }
}

class RegionsDataModelBuilder
    implements Builder<RegionsDataModel, RegionsDataModelBuilder> {
  _$RegionsDataModel? _$v;

  ListBuilder<RegionsDataResModel?>? _regions;
  ListBuilder<RegionsDataResModel?> get regions =>
      _$this._regions ??= new ListBuilder<RegionsDataResModel?>();
  set regions(ListBuilder<RegionsDataResModel?>? regions) =>
      _$this._regions = regions;

  RegionsDataModelBuilder();

  RegionsDataModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regions = $v.regions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionsDataModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegionsDataModel;
  }

  @override
  void update(void Function(RegionsDataModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionsDataModel build() => _build();

  _$RegionsDataModel _build() {
    _$RegionsDataModel _$result;
    try {
      _$result = _$v ?? new _$RegionsDataModel._(regions: _regions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regions';
        _regions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RegionsDataModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$RegionsDataResModel extends RegionsDataResModel {
  @override
  final int? id;
  @override
  final String? name;

  factory _$RegionsDataResModel(
          [void Function(RegionsDataResModelBuilder)? updates]) =>
      (new RegionsDataResModelBuilder()..update(updates))._build();

  _$RegionsDataResModel._({this.id, this.name}) : super._();

  @override
  RegionsDataResModel rebuild(
          void Function(RegionsDataResModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionsDataResModelBuilder toBuilder() =>
      new RegionsDataResModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionsDataResModel && id == other.id && name == other.name;
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
    return (newBuiltValueToStringHelper(r'RegionsDataResModel')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class RegionsDataResModelBuilder
    implements Builder<RegionsDataResModel, RegionsDataResModelBuilder> {
  _$RegionsDataResModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  RegionsDataResModelBuilder();

  RegionsDataResModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionsDataResModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegionsDataResModel;
  }

  @override
  void update(void Function(RegionsDataResModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionsDataResModel build() => _build();

  _$RegionsDataResModel _build() {
    final _$result = _$v ?? new _$RegionsDataResModel._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
