// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TripEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRegions,
    required TResult Function(int startLocationId, int endLocationId,
            int isPostal, int isPassenger)
        searchTrip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRegions,
    TResult? Function(int startLocationId, int endLocationId, int isPostal,
            int isPassenger)?
        searchTrip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRegions,
    TResult Function(int startLocationId, int endLocationId, int isPostal,
            int isPassenger)?
        searchTrip,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRegions value) getRegions,
    required TResult Function(_SearchTrip value) searchTrip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRegions value)? getRegions,
    TResult? Function(_SearchTrip value)? searchTrip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRegions value)? getRegions,
    TResult Function(_SearchTrip value)? searchTrip,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripEventCopyWith<$Res> {
  factory $TripEventCopyWith(TripEvent value, $Res Function(TripEvent) then) =
      _$TripEventCopyWithImpl<$Res, TripEvent>;
}

/// @nodoc
class _$TripEventCopyWithImpl<$Res, $Val extends TripEvent>
    implements $TripEventCopyWith<$Res> {
  _$TripEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetRegionsCopyWith<$Res> {
  factory _$$_GetRegionsCopyWith(
          _$_GetRegions value, $Res Function(_$_GetRegions) then) =
      __$$_GetRegionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetRegionsCopyWithImpl<$Res>
    extends _$TripEventCopyWithImpl<$Res, _$_GetRegions>
    implements _$$_GetRegionsCopyWith<$Res> {
  __$$_GetRegionsCopyWithImpl(
      _$_GetRegions _value, $Res Function(_$_GetRegions) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetRegions implements _GetRegions {
  const _$_GetRegions();

  @override
  String toString() {
    return 'TripEvent.getRegions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetRegions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRegions,
    required TResult Function(int startLocationId, int endLocationId,
            int isPostal, int isPassenger)
        searchTrip,
  }) {
    return getRegions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRegions,
    TResult? Function(int startLocationId, int endLocationId, int isPostal,
            int isPassenger)?
        searchTrip,
  }) {
    return getRegions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRegions,
    TResult Function(int startLocationId, int endLocationId, int isPostal,
            int isPassenger)?
        searchTrip,
    required TResult orElse(),
  }) {
    if (getRegions != null) {
      return getRegions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRegions value) getRegions,
    required TResult Function(_SearchTrip value) searchTrip,
  }) {
    return getRegions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRegions value)? getRegions,
    TResult? Function(_SearchTrip value)? searchTrip,
  }) {
    return getRegions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRegions value)? getRegions,
    TResult Function(_SearchTrip value)? searchTrip,
    required TResult orElse(),
  }) {
    if (getRegions != null) {
      return getRegions(this);
    }
    return orElse();
  }
}

abstract class _GetRegions implements TripEvent {
  const factory _GetRegions() = _$_GetRegions;
}

/// @nodoc
abstract class _$$_SearchTripCopyWith<$Res> {
  factory _$$_SearchTripCopyWith(
          _$_SearchTrip value, $Res Function(_$_SearchTrip) then) =
      __$$_SearchTripCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int startLocationId, int endLocationId, int isPostal, int isPassenger});
}

/// @nodoc
class __$$_SearchTripCopyWithImpl<$Res>
    extends _$TripEventCopyWithImpl<$Res, _$_SearchTrip>
    implements _$$_SearchTripCopyWith<$Res> {
  __$$_SearchTripCopyWithImpl(
      _$_SearchTrip _value, $Res Function(_$_SearchTrip) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startLocationId = null,
    Object? endLocationId = null,
    Object? isPostal = null,
    Object? isPassenger = null,
  }) {
    return _then(_$_SearchTrip(
      startLocationId: null == startLocationId
          ? _value.startLocationId
          : startLocationId // ignore: cast_nullable_to_non_nullable
              as int,
      endLocationId: null == endLocationId
          ? _value.endLocationId
          : endLocationId // ignore: cast_nullable_to_non_nullable
              as int,
      isPostal: null == isPostal
          ? _value.isPostal
          : isPostal // ignore: cast_nullable_to_non_nullable
              as int,
      isPassenger: null == isPassenger
          ? _value.isPassenger
          : isPassenger // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SearchTrip implements _SearchTrip {
  const _$_SearchTrip(
      {required this.startLocationId,
      required this.endLocationId,
      required this.isPostal,
      required this.isPassenger});

  @override
  final int startLocationId;
  @override
  final int endLocationId;
  @override
  final int isPostal;
  @override
  final int isPassenger;

  @override
  String toString() {
    return 'TripEvent.searchTrip(startLocationId: $startLocationId, endLocationId: $endLocationId, isPostal: $isPostal, isPassenger: $isPassenger)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchTrip &&
            (identical(other.startLocationId, startLocationId) ||
                other.startLocationId == startLocationId) &&
            (identical(other.endLocationId, endLocationId) ||
                other.endLocationId == endLocationId) &&
            (identical(other.isPostal, isPostal) ||
                other.isPostal == isPostal) &&
            (identical(other.isPassenger, isPassenger) ||
                other.isPassenger == isPassenger));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, startLocationId, endLocationId, isPostal, isPassenger);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchTripCopyWith<_$_SearchTrip> get copyWith =>
      __$$_SearchTripCopyWithImpl<_$_SearchTrip>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRegions,
    required TResult Function(int startLocationId, int endLocationId,
            int isPostal, int isPassenger)
        searchTrip,
  }) {
    return searchTrip(startLocationId, endLocationId, isPostal, isPassenger);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRegions,
    TResult? Function(int startLocationId, int endLocationId, int isPostal,
            int isPassenger)?
        searchTrip,
  }) {
    return searchTrip?.call(
        startLocationId, endLocationId, isPostal, isPassenger);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRegions,
    TResult Function(int startLocationId, int endLocationId, int isPostal,
            int isPassenger)?
        searchTrip,
    required TResult orElse(),
  }) {
    if (searchTrip != null) {
      return searchTrip(startLocationId, endLocationId, isPostal, isPassenger);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRegions value) getRegions,
    required TResult Function(_SearchTrip value) searchTrip,
  }) {
    return searchTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRegions value)? getRegions,
    TResult? Function(_SearchTrip value)? searchTrip,
  }) {
    return searchTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRegions value)? getRegions,
    TResult Function(_SearchTrip value)? searchTrip,
    required TResult orElse(),
  }) {
    if (searchTrip != null) {
      return searchTrip(this);
    }
    return orElse();
  }
}

abstract class _SearchTrip implements TripEvent {
  const factory _SearchTrip(
      {required final int startLocationId,
      required final int endLocationId,
      required final int isPostal,
      required final int isPassenger}) = _$_SearchTrip;

  int get startLocationId;
  int get endLocationId;
  int get isPostal;
  int get isPassenger;
  @JsonKey(ignore: true)
  _$$_SearchTripCopyWith<_$_SearchTrip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TripState {
  List<RegionsDataResModel?>? get regionsModel =>
      throw _privateConstructorUsedError;
  List<TripsModel?>? get tripsDataList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripStateCopyWith<TripState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripStateCopyWith<$Res> {
  factory $TripStateCopyWith(TripState value, $Res Function(TripState) then) =
      _$TripStateCopyWithImpl<$Res, TripState>;
  @useResult
  $Res call(
      {List<RegionsDataResModel?>? regionsModel,
      List<TripsModel?>? tripsDataList});
}

/// @nodoc
class _$TripStateCopyWithImpl<$Res, $Val extends TripState>
    implements $TripStateCopyWith<$Res> {
  _$TripStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regionsModel = freezed,
    Object? tripsDataList = freezed,
  }) {
    return _then(_value.copyWith(
      regionsModel: freezed == regionsModel
          ? _value.regionsModel
          : regionsModel // ignore: cast_nullable_to_non_nullable
              as List<RegionsDataResModel?>?,
      tripsDataList: freezed == tripsDataList
          ? _value.tripsDataList
          : tripsDataList // ignore: cast_nullable_to_non_nullable
              as List<TripsModel?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TripStateCopyWith<$Res> implements $TripStateCopyWith<$Res> {
  factory _$$_TripStateCopyWith(
          _$_TripState value, $Res Function(_$_TripState) then) =
      __$$_TripStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RegionsDataResModel?>? regionsModel,
      List<TripsModel?>? tripsDataList});
}

/// @nodoc
class __$$_TripStateCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$_TripState>
    implements _$$_TripStateCopyWith<$Res> {
  __$$_TripStateCopyWithImpl(
      _$_TripState _value, $Res Function(_$_TripState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regionsModel = freezed,
    Object? tripsDataList = freezed,
  }) {
    return _then(_$_TripState(
      regionsModel: freezed == regionsModel
          ? _value._regionsModel
          : regionsModel // ignore: cast_nullable_to_non_nullable
              as List<RegionsDataResModel?>?,
      tripsDataList: freezed == tripsDataList
          ? _value._tripsDataList
          : tripsDataList // ignore: cast_nullable_to_non_nullable
              as List<TripsModel?>?,
    ));
  }
}

/// @nodoc

class _$_TripState extends _TripState {
  const _$_TripState(
      {final List<RegionsDataResModel?>? regionsModel = const [],
      final List<TripsModel?>? tripsDataList = const []})
      : _regionsModel = regionsModel,
        _tripsDataList = tripsDataList,
        super._();

  final List<RegionsDataResModel?>? _regionsModel;
  @override
  @JsonKey()
  List<RegionsDataResModel?>? get regionsModel {
    final value = _regionsModel;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TripsModel?>? _tripsDataList;
  @override
  @JsonKey()
  List<TripsModel?>? get tripsDataList {
    final value = _tripsDataList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TripState(regionsModel: $regionsModel, tripsDataList: $tripsDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripState &&
            const DeepCollectionEquality()
                .equals(other._regionsModel, _regionsModel) &&
            const DeepCollectionEquality()
                .equals(other._tripsDataList, _tripsDataList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_regionsModel),
      const DeepCollectionEquality().hash(_tripsDataList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripStateCopyWith<_$_TripState> get copyWith =>
      __$$_TripStateCopyWithImpl<_$_TripState>(this, _$identity);
}

abstract class _TripState extends TripState {
  const factory _TripState(
      {final List<RegionsDataResModel?>? regionsModel,
      final List<TripsModel?>? tripsDataList}) = _$_TripState;
  const _TripState._() : super._();

  @override
  List<RegionsDataResModel?>? get regionsModel;
  @override
  List<TripsModel?>? get tripsDataList;
  @override
  @JsonKey(ignore: true)
  _$$_TripStateCopyWith<_$_TripState> get copyWith =>
      throw _privateConstructorUsedError;
}
