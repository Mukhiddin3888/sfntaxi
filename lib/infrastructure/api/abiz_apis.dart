
import 'package:chopper/chopper.dart';
import '../core/built_value_converter.dart';
import '../core/interceptors.dart';
import '../models/auth/auth.dart';
import '../models/me/me.dart';
import '../models/trip/regions.dart';
import '../models/trip/trip.dart';
part 'abiz_apis.chopper.dart';

@ChopperApi(baseUrl: '/api/v1/')
abstract class AuthService extends ChopperService {
  @Post(path: 'otp/send-code')
  Future<Response<SendOTPCodeResponseModel>> sendOTPCode(
      @Body() SendOTPModel body,
      {
    @Header('x-app-lang') String? lang,
    @Header('x-device-type') String? deviceType,
    @Header('x-device-model') String? deviceModel,
    @Header('x-app-version') String? appVersion,
    @Header('x-app-build') String? appBuilt,
    @Header('x-device-uid') String? deviceUid,
  });

  @Post(
    path: 'auth/exists',
  )
  Future<Response<VerifiedSuccessModel>> verify(
    @Body() VerifyCodeModel body,
      {
        @Header('x-app-lang') String? lang,
        @Header('x-device-type') String? deviceType,
        @Header('x-device-model') String? deviceModel,
        @Header('x-app-version') String? appVersion,
        @Header('x-app-build') String? appBuilt,
        @Header('x-device-uid') String? deviceUid,
      }
  );


  @Post(path: 'auth/signup')
  Future<Response<VerifiedExistsSuccessModel>> signUp(
    @Body() SignUpModel? body,
      {
        @Header('x-app-lang') String? lang,
        @Header('x-device-type') String? deviceType,
        @Header('x-device-model') String? deviceModel,
        @Header('x-app-version') String? appVersion,
        @Header('x-app-build') String? appBuilt,
        @Header('x-device-uid') String? deviceUid,
      }
  );


  @Post(path: 'auth/login')
  Future<Response<VerifiedExistsSuccessModel>> login(
    @Body() LoginModel? body,
      {
        @Header('x-app-lang') String? lang,
        @Header('x-device-type') String? deviceType,
        @Header('x-device-model') String? deviceModel,
        @Header('x-app-version') String? appVersion,
        @Header('x-app-build') String? appBuilt,
        @Header('x-device-uid') String? deviceUid,
      }
  );

  static AuthService create() => _$AuthService(
      _Client('https://taxi.ittech.uz', true));
}


@ChopperApi(baseUrl: '/api/v1/')
abstract class ProfileService extends ChopperService {


  @Get(path: 'auth/me')
  Future<Response<MeResponseModel>> getMe(
      {
        @Header('Authorization') String? token,
        @Header('x-app-lang') String? lang,
        @Header('x-device-type') String? deviceType,
        @Header('x-device-model') String? deviceModel,
        @Header('x-app-version') String? appVersion,
        @Header('x-app-build') String? appBuilt,
        @Header('x-device-uid') String? deviceUid,
      }
  );

  static ProfileService create() => _$ProfileService(_Client('https://taxi.ittech.uz', true));
}



@ChopperApi(baseUrl: '/api/v1/')
abstract class TripService extends ChopperService {


  @Get(path: 'resources/regions')
  Future<Response<RegionsModel>> getRegions(
      {
        @Header('Authorization') String? token,
        @Header('x-app-lang') String? lang,
        @Header('x-device-type') String? deviceType,
        @Header('x-device-model') String? deviceModel,
        @Header('x-app-version') String? appVersion,
        @Header('x-app-build') String? appBuilt,
        @Header('x-device-uid') String? deviceUid,
      }
  );


  @Get(path: 'search?start_location_id={start_location_id}&end_location_id={end_location_id}&is_postal={is_postal}&is_passenger={is_passenger}')
  Future<Response<TripSearchModel>> searchTrip(
      {
        @Header('Authorization') String? token,
        @Header('x-app-lang') String? lang,
        @Header('x-device-type') String? deviceType,
        @Header('x-device-model') String? deviceModel,
        @Header('x-app-version') String? appVersion,
        @Header('x-app-build') String? appBuilt,
        @Header('x-device-uid') String? deviceUid,

        @Path('start_location_id') int? startLocationId,
        @Path('end_location_id') int? endLocationId,
        @Path('is_postal') int? isPostal,
        @Path('is_passenger') int? isPassenger,
      }
  );

  static TripService create() => _$TripService(_Client('https://taxi.ittech.uz', true));
}

/*

@ChopperApi(baseUrl: '/api/')
abstract class ImageUploadService extends ChopperService {
  @Post(path: 'media/upload-file/')
  @multipart
  Future<Response<ImageUploadResponseModel>> imageUpload(
    @Header('object-type') String objectType,
    @PartFile('file') String file,
  );

  static ImageUploadService create() =>
      _$ImageUploadService(_Client('http://157.241.21.225', true));
}
*/

class _Client extends ChopperClient {
  _Client(String baseUrl, bool useInterceptors)
      : super(
            baseUrl: baseUrl,
            interceptors: useInterceptors
                ? [
                    HttpLoggingInterceptor(),
                    CurlInterceptor(),
                    NetworkInterceptor(),
                    BackendInterceptor(),
                  ]
                : const [],
            converter: BuiltValueConverter(),
            errorConverter: ErrorMyConverter());
}
