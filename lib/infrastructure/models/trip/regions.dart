

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';

import '../auth/auth.dart';

part 'regions.g.dart';

abstract class RegionsModel implements Built<RegionsModel, RegionsModelBuilder> {
  RegionsModel._();

  factory RegionsModel([Function(RegionsModelBuilder b) updates]) =
  _$RegionsModel;

  @BuiltValueField(wireName: 'success')
  bool? get success;

  @BuiltValueField(wireName: 'error')
  ErrorResponseModel? get error;

  @BuiltValueField(wireName: 'data')
  RegionsDataModel? get data;

  static Serializer<RegionsModel> get serializer => _$regionsModelSerializer;
}


abstract class RegionsDataModel implements Built<RegionsDataModel, RegionsDataModelBuilder> {
  RegionsDataModel._();

  factory RegionsDataModel([Function(RegionsDataModelBuilder b) updates]) =
  _$RegionsDataModel;

  @BuiltValueField(wireName: 'regions')
  BuiltList<RegionsDataResModel?>? get regions;


  static Serializer<RegionsDataModel> get serializer => _$regionsDataModelSerializer;
}

abstract class RegionsDataResModel implements Built<RegionsDataResModel, RegionsDataResModelBuilder> {
  RegionsDataResModel._();

  factory RegionsDataResModel([Function(RegionsDataResModelBuilder b) updates]) =
  _$RegionsDataResModel;

  @BuiltValueField(wireName: 'id')
  int? get id;

  @BuiltValueField(wireName: 'name')
  String? get name;


  static Serializer<RegionsDataResModel> get serializer => _$regionsDataResModelSerializer;
}
