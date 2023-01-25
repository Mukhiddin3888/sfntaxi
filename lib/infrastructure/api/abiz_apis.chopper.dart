// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abiz_apis.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$AuthService extends AuthService {
  _$AuthService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AuthService;

  @override
  Future<Response<SendOTPCodeResponseModel>> sendOTPCode(
    SendOTPModel body, {
    String? lang,
    String? deviceType,
    String? deviceModel,
    String? appVersion,
    String? appBuilt,
    String? deviceUid,
  }) {
    final $url = '/api/v1/otp/send-code';
    final $headers = {
      if (lang != null) 'x-app-lang': lang,
      if (deviceType != null) 'x-device-type': deviceType,
      if (deviceModel != null) 'x-device-model': deviceModel,
      if (appVersion != null) 'x-app-version': appVersion,
      if (appBuilt != null) 'x-app-build': appBuilt,
      if (deviceUid != null) 'x-device-uid': deviceUid,
    };

    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client
        .send<SendOTPCodeResponseModel, SendOTPCodeResponseModel>($request);
  }

  @override
  Future<Response<VerifiedSuccessModel>> verify(
    VerifyCodeModel body, {
    String? lang,
    String? deviceType,
    String? deviceModel,
    String? appVersion,
    String? appBuilt,
    String? deviceUid,
  }) {
    final $url = '/api/v1/auth/exists';
    final $headers = {
      if (lang != null) 'x-app-lang': lang,
      if (deviceType != null) 'x-device-type': deviceType,
      if (deviceModel != null) 'x-device-model': deviceModel,
      if (appVersion != null) 'x-app-version': appVersion,
      if (appBuilt != null) 'x-app-build': appBuilt,
      if (deviceUid != null) 'x-device-uid': deviceUid,
    };

    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<VerifiedSuccessModel, VerifiedSuccessModel>($request);
  }

  @override
  Future<Response<VerifiedExistsSuccessModel>> signUp(
    SignUpModel? body, {
    String? lang,
    String? deviceType,
    String? deviceModel,
    String? appVersion,
    String? appBuilt,
    String? deviceUid,
  }) {
    final $url = '/api/v1/auth/signup';
    final $headers = {
      if (lang != null) 'x-app-lang': lang,
      if (deviceType != null) 'x-device-type': deviceType,
      if (deviceModel != null) 'x-device-model': deviceModel,
      if (appVersion != null) 'x-app-version': appVersion,
      if (appBuilt != null) 'x-app-build': appBuilt,
      if (deviceUid != null) 'x-device-uid': deviceUid,
    };

    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client
        .send<VerifiedExistsSuccessModel, VerifiedExistsSuccessModel>($request);
  }

  @override
  Future<Response<VerifiedExistsSuccessModel>> login(
    LoginModel? body, {
    String? lang,
    String? deviceType,
    String? deviceModel,
    String? appVersion,
    String? appBuilt,
    String? deviceUid,
  }) {
    final $url = '/api/v1/auth/login';
    final $headers = {
      if (lang != null) 'x-app-lang': lang,
      if (deviceType != null) 'x-device-type': deviceType,
      if (deviceModel != null) 'x-device-model': deviceModel,
      if (appVersion != null) 'x-app-version': appVersion,
      if (appBuilt != null) 'x-app-build': appBuilt,
      if (deviceUid != null) 'x-device-uid': deviceUid,
    };

    final $body = body;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client
        .send<VerifiedExistsSuccessModel, VerifiedExistsSuccessModel>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ProfileService extends ProfileService {
  _$ProfileService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ProfileService;

  @override
  Future<Response<MeResponseModel>> getMe({
    String? token,
    String? lang,
    String? deviceType,
    String? deviceModel,
    String? appVersion,
    String? appBuilt,
    String? deviceUid,
  }) {
    final $url = '/api/v1/auth/me';
    final $headers = {
      if (token != null) 'Authorization': token,
      if (lang != null) 'x-app-lang': lang,
      if (deviceType != null) 'x-device-type': deviceType,
      if (deviceModel != null) 'x-device-model': deviceModel,
      if (appVersion != null) 'x-app-version': appVersion,
      if (appBuilt != null) 'x-app-build': appBuilt,
      if (deviceUid != null) 'x-device-uid': deviceUid,
    };

    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<MeResponseModel, MeResponseModel>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$TripService extends TripService {
  _$TripService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = TripService;

  @override
  Future<Response<RegionsModel>> getRegions({
    String? token,
    String? lang,
    String? deviceType,
    String? deviceModel,
    String? appVersion,
    String? appBuilt,
    String? deviceUid,
  }) {
    final $url = '/api/v1/resources/regions';
    final $headers = {
      if (token != null) 'Authorization': token,
      if (lang != null) 'x-app-lang': lang,
      if (deviceType != null) 'x-device-type': deviceType,
      if (deviceModel != null) 'x-device-model': deviceModel,
      if (appVersion != null) 'x-app-version': appVersion,
      if (appBuilt != null) 'x-app-build': appBuilt,
      if (deviceUid != null) 'x-device-uid': deviceUid,
    };

    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<RegionsModel, RegionsModel>($request);
  }

  @override
  Future<Response<TripSearchModel>> searchTrip({
    String? token,
    String? lang,
    String? deviceType,
    String? deviceModel,
    String? appVersion,
    String? appBuilt,
    String? deviceUid,
    int? startLocationId,
    int? endLocationId,
    int? isPostal,
    int? isPassenger,
  }) {
    final $url =
        '/api/v1/search?start_location_id=${startLocationId}&end_location_id=${endLocationId}&is_postal=${isPostal}&is_passenger=${isPassenger}';
    final $headers = {
      if (token != null) 'Authorization': token,
      if (lang != null) 'x-app-lang': lang,
      if (deviceType != null) 'x-device-type': deviceType,
      if (deviceModel != null) 'x-device-model': deviceModel,
      if (appVersion != null) 'x-app-version': appVersion,
      if (appBuilt != null) 'x-app-build': appBuilt,
      if (deviceUid != null) 'x-device-uid': deviceUid,
    };

    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<TripSearchModel, TripSearchModel>($request);
  }
}
