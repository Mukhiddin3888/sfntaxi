
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:sfntaxi/domain/core/token_ext.dart';
import 'package:sfntaxi/presentation/routes/routes.dart';
import 'package:sfntaxi/presentation/styles/theme.dart';

import '../infrastructure/services/db_service.dart';


class AppWidget extends StatelessWidget {
  final DBService dbService;
  final ConnectivityResult connectivityX;


  const AppWidget(
      {Key? key, required this.dbService, required this.connectivityX})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CustomTheme.create(dbService),
        builder: (BuildContext context, _) {
          return RepositoryProvider(
            create: (context) => dbService,
            child: MaterialApp(
              theme: ThemeData(useMaterial3: true),
              builder: EasyLoading.init(),
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              onGenerateRoute: (settings) =>
                  Routes.onGenerateRoute(
                    context: context,
                    authFailure: dbService.token.hasFailure,
                    notConnection: connectivityX == ConnectivityResult.none,
                  ),
            ),
          );
        });
  }
}