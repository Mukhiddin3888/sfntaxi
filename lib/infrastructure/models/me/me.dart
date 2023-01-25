


import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';

import '../auth/auth.dart';

part 'me.g.dart';

abstract class MeResponseModel implements Built<MeResponseModel, MeResponseModelBuilder> {
  MeResponseModel._();

factory MeResponseModel([Function(MeResponseModelBuilder b) updates]) =
_$MeResponseModel;

@BuiltValueField(wireName: 'success')
bool? get success;

@BuiltValueField(wireName: 'data')
MeDataModel? get data;

@BuiltValueField(wireName: 'error')
ErrorResponseModel? get error;

static Serializer<MeResponseModel> get serializer => _$meResponseModelSerializer;
}



abstract class MeDataModel implements Built<MeDataModel, MeDataModelBuilder> {
  MeDataModel._();

factory MeDataModel([Function(MeDataModelBuilder b) updates]) =
_$MeDataModel;

@BuiltValueField(wireName: 'user')
MeUserModel? get user;

static Serializer<MeDataModel> get serializer => _$meDataModelSerializer;
}





abstract class MeUserModel implements Built<MeUserModel, MeUserModelBuilder> {
  MeUserModel._();

factory MeUserModel([Function(MeUserModelBuilder b) updates]) =
_$MeUserModel;

@BuiltValueField(wireName: 'username')
String? get username;

@BuiltValueField(wireName: 'birthday')
String? get birthday;

@BuiltValueField(wireName: 'full_name')
String? get fullName;

static Serializer<MeUserModel> get serializer => _$meUserModelSerializer;
}
