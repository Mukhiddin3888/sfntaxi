import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import '../models/auth/auth.dart';
import '../models/me/me.dart';
import '../models/trip/trip.dart';


part 'serializer.g.dart';

@SerializersFor([

  ///Auth
  SendOTPModel,
  VerifyCodeModel,
  VerifiedSuccessModel,
  SuccessResponseModel,
  ErrorResponseModel,
  SendOTPCodeResponseModel,
  SuccessVerifyDataResponseModel,
  SignUpModel,
  SignUpActivityModel,
  LoginModel,
  SuccessLoginResponseModel,
  VerifiedExistsSuccessModel,

  ///Profile
  MeResponseModel,
  MeDataModel,
  MeUserModel,

  ///Trip
  TripSearchModel,
  TripDataModel,
  TripsModel


])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
