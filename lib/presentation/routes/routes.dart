
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:sfntaxi/presentation/pages/auth/choose_language.dart';
import 'package:sfntaxi/presentation/test.dart';
import '../../domain/auth/auth_failure.dart';
import '../../infrastructure/services/db_service.dart';
import '../app_widget.dart';
import '../pages/no_connection.dart';

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

      return getTestPage();

      // return getCurrentLocationRoute(context);
    } else {
      debugPrint(' auth fail page');

      return getChooseLanguagePage();

      // return getChooseLanguageRoute(context);
    }
  }

  static PageRoute getAppWidget(
    DBService dbService,
    ConnectivityResult connectivityResult,
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

  // static PageRoute getSplashPage(BuildContext context) => MaterialPageRoute(
  //       builder: (_) => const SplashPage(),
  //     );


}
