

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';

import '../auth/auth.dart';

part 'trip.g.dart';

abstract class TripSearchModel implements Built<TripSearchModel, TripSearchModelBuilder> {
  TripSearchModel._();

  factory TripSearchModel([Function(TripSearchModelBuilder b) updates]) =
  _$TripSearchModel;

  @BuiltValueField(wireName: 'success')
  bool? get success;

  @BuiltValueField(wireName: 'data')
  TripDataModel? get data;

  @BuiltValueField(wireName: 'error')
  ErrorResponseModel? get error;

  static Serializer<TripSearchModel> get serializer => _$tripSearchModelSerializer;
}


abstract class TripDataModel implements Built<TripDataModel, TripDataModelBuilder> {
  TripDataModel._();

  factory TripDataModel([Function(TripDataModelBuilder b) updates]) =
  _$TripDataModel;

  @BuiltValueField(wireName: 'trips')
  BuiltList<TripsModel?>? get trips;


  static Serializer<TripDataModel> get serializer => _$tripDataModelSerializer;
}


abstract class TripsModel implements Built<TripsModel, TripsModelBuilder> {
  TripsModel._();

  factory TripsModel([Function(TripsModelBuilder b) updates]) =
  _$TripsModel;

  @BuiltValueField(wireName: 'id')
  String? get id;


  static Serializer<TripsModel> get serializer => _$tripsModelSerializer;
}
