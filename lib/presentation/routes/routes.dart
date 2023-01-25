
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sfntaxi/infrastructure/api/abiz_apis.dart';
import 'package:sfntaxi/infrastructure/repositories/auth_repo.dart';
import 'package:sfntaxi/presentation/pages/auth/personal_info.dart';
import '../../application/auth/auth_bloc.dart';
import '../../application/profile/profile_bloc.dart';
import '../../domain/auth/auth_failure.dart';
import '../../infrastructure/repositories/profile_repo.dart';
import '../../infrastructure/services/db_service.dart';
import '../app_widget.dart';
import '../pages/auth/choose_language.dart';
import '../pages/auth/login.dart';
import '../pages/auth/verify_code.dart';
import '../pages/main_screen/main_screen.dart';
import '../pages/no_connection.dart';
import '../pages/profile_tabs/edit_profile.dart';
import '../pages/splash.dart';
import '../pages/taxi/taxi_page.dart';
import '../test.dart';

class Routes {
  static PageRoute onGenerateRoute({
    required BuildContext context,
    required AuthFailure? authFailure,
    required bool notConnection,
  }) {
    if (notConnection) {
      debugPrint('not connection page');

      return getNetworkNotFound();
    } else if (authFailure == null) {
      debugPrint(' auth succcess page');

      return getMainScreenPage(context);

    } else {
      debugPrint(' auth fail page');

      return getChooseLanguagePage();
    }
  }

  static PageRoute getAppWidget(
    DBService dbService,
    bool connectivityResult,
  ) =>
      MaterialPageRoute(
        builder: (_) => AppWidget(
          dbService: dbService,
          connectivityX: connectivityResult,
        ),
      );

  static PageRoute getNetworkNotFound() => MaterialPageRoute(
        builder: (_) => const NoConnection(),
      );

  static PageRoute getTestPage() => MaterialPageRoute(
        builder: (_) => const TestPage(),
      );

  static PageRoute getChooseLanguagePage() => MaterialPageRoute(
        builder: (_) => const ChooseLanguagePage(),
      );

  static PageRoute getLoginRoute(BuildContext context) => MaterialPageRoute(
    builder: (_) => BlocProvider(
        create: (context) => AuthBloc(AuthRepository(
            context.read<DBService>(), AuthService.create())),
        child: const LoginPage()),
  );

  static PageRoute getGetCodeRoute(BuildContext context, String phoneNumber) =>
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
            value: context.read<AuthBloc>(),
            child: VerifyCodePage(
              phoneNumber: phoneNumber,
            )),
      );


  static PageRoute getPersonalInfoPage(
      BuildContext context, String phoneNumber) =>
      MaterialPageRoute(
        builder: (_) => BlocProvider(
            create: (BuildContext context) => AuthBloc(AuthRepository(
                context.read<DBService>(), AuthService.create())),
            child: PersonalInfoPage(
             userName: phoneNumber,
            )),
      );


  static PageRoute getSplashPage(BuildContext context) => MaterialPageRoute(
        builder: (_) => const SplashPage(),
      );

  static PageRoute getMainScreenPage(BuildContext context) => MaterialPageRoute(
        builder: (_) => const MainScreen(),
      );

  static PageRoute getTaxiPage(BuildContext context) => MaterialPageRoute(
        builder: (_) => const TaxiPage(),
      );



  static PageRoute getEditProfilePage(
      BuildContext context,) =>
      MaterialPageRoute(
        builder: (_) => BlocProvider(
            create: (BuildContext context) => ProfileBloc(ProfileRepository(
                context.read<DBService>(), ProfileService.create()))..add(const ProfileEvent.getMe()),
            child: const EditProfilePage()),
      );


}
