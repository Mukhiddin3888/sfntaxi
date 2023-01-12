
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
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
      return getNetworkNotFound();
    } else if (authFailure == null) {
      return getNetworkNotFound();

      // return getCurrentLocationRoute(context);
    } else {
      return getNetworkNotFound();

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

  // static PageRoute getSplashPage(BuildContext context) => MaterialPageRoute(
  //       builder: (_) => const SplashPage(),
  //     );


}
