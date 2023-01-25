// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TripSearchModel> _$tripSearchModelSerializer =
    new _$TripSearchModelSerializer();
Serializer<TripDataModel> _$tripDataModelSerializer =
    new _$TripDataModelSerializer();
Serializer<TripsModel> _$tripsModelSerializer = new _$TripsModelSerializer();

class _$TripSearchModelSerializer
    implements StructuredSerializer<TripSearchModel> {
  @override
  final Iterable<Type> types = const [TripSearchModel, _$TripSearchModel];
  @override
  final String wireName = 'TripSearchModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, TripSearchModel object,
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
            specifiedType: const FullType(TripDataModel)));
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
  TripSearchModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TripSearchModelBuilder();

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
              specifiedType: const FullType(TripDataModel))! as TripDataModel);
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

class _$TripDataModelSerializer implements StructuredSerializer<TripDataModel> {
  @override
  final Iterable<Type> types = const [TripDataModel, _$TripDataModel];
  @override
  final String wireName = 'TripDataModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, TripDataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.trips;
    if (value != null) {
      result
        ..add('trips')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(TripsModel)])));
    }
    return result;
  }

  @override
  TripDataModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TripDataModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'trips':
          result.trips.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(TripsModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$TripsModelSerializer implements StructuredSerializer<TripsModel> {
  @override
  final Iterable<Type> types = const [TripsModel, _$TripsModel];
  @override
  final String wireName = 'TripsModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, TripsModel object,
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
    return result;
  }

  @override
  TripsModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TripsModelBuilder();

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
      }
    }

    return result.build();
  }
}

class _$TripSearchModel extends TripSearchModel {
  @override
  final bool? success;
  @override
  final TripDataModel? data;
  @override
  final ErrorResponseModel? error;

  factory _$TripSearchModel([void Function(TripSearchModelBuilder)? updates]) =>
      (new TripSearchModelBuilder()..update(updates))._build();

  _$TripSearchModel._({this.success, this.data, this.error}) : super._();

  @override
  TripSearchModel rebuild(void Function(TripSearchModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TripSearchModelBuilder toBuilder() =>
      new TripSearchModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TripSearchModel &&
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
    return (newBuiltValueToStringHelper(r'TripSearchModel')
          ..add('success', success)
          ..add('data', data)
          ..add('error', error))
        .toString();
  }
}

class TripSearchModelBuilder
    implements Builder<TripSearchModel, TripSearchModelBuilder> {
  _$TripSearchModel? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  TripDataModelBuilder? _data;
  TripDataModelBuilder get data => _$this._data ??= new TripDataModelBuilder();
  set data(TripDataModelBuilder? data) => _$this._data = data;

  ErrorResponseModelBuilder? _error;
  ErrorResponseModelBuilder get error =>
      _$this._error ??= new ErrorResponseModelBuilder();
  set error(ErrorResponseModelBuilder? error) => _$this._error = error;

  TripSearchModelBuilder();

  TripSearchModelBuilder get _$this {
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
  void replace(TripSearchModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TripSearchModel;
  }

  @override
  void update(void Function(TripSearchModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TripSearchModel build() => _build();

  _$TripSearchModel _build() {
    _$TripSearchModel _$result;
    try {
      _$result = _$v ??
          new _$TripSearchModel._(
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
            r'TripSearchModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TripDataModel extends TripDataModel {
  @override
  final BuiltList<TripsModel?>? trips;

  factory _$TripDataModel([void Function(TripDataModelBuilder)? updates]) =>
      (new TripDataModelBuilder()..update(updates))._build();

  _$TripDataModel._({this.trips}) : super._();

  @override
  TripDataModel rebuild(void Function(TripDataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TripDataModelBuilder toBuilder() => new TripDataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TripDataModel && trips == other.trips;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trips.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TripDataModel')..add('trips', trips))
        .toString();
  }
}

class TripDataModelBuilder
    implements Builder<TripDataModel, TripDataModelBuilder> {
  _$TripDataModel? _$v;

  ListBuilder<TripsModel?>? _trips;
  ListBuilder<TripsModel?> get trips =>
      _$this._trips ??= new ListBuilder<TripsModel?>();
  set trips(ListBuilder<TripsModel?>? trips) => _$this._trips = trips;

  TripDataModelBuilder();

  TripDataModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trips = $v.trips?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TripDataModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TripDataModel;
  }

  @override
  void update(void Function(TripDataModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TripDataModel build() => _build();

  _$TripDataModel _build() {
    _$TripDataModel _$result;
    try {
      _$result = _$v ?? new _$TripDataModel._(trips: _trips?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trips';
        _trips?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TripDataModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TripsModel extends TripsModel {
  @override
  final String? id;

  factory _$TripsModel([void Function(TripsModelBuilder)? updates]) =>
      (new TripsModelBuilder()..update(updates))._build();

  _$TripsModel._({this.id}) : super._();

  @override
  TripsModel rebuild(void Function(TripsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TripsModelBuilder toBuilder() => new TripsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TripsModel && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TripsModel')..add('id', id))
        .toString();
  }
}

class TripsModelBuilder implements Builder<TripsModel, TripsModelBuilder> {
  _$TripsModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  TripsModelBuilder();

  TripsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TripsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TripsModel;
  }

  @override
  void update(void Function(TripsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TripsModel build() => _build();

  _$TripsModel _build() {
    final _$result = _$v ?? new _$TripsModel._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
