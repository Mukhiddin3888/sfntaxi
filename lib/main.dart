import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sfntaxi/presentation/app_widget.dart';
import 'package:sfntaxi/presentation/core/app_init.dart';


Future<void> main() async {

  await Hive.initFlutter();
  await AppInit.create;

  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return EasyLocalization(
            supportedLocales: const [
              Locale('uz','UZ'),
              // Locale('ru', 'RU'),
              // Locale('en', 'EN'),
            ],
            path: 'assets/translations',
            // <-- change the path of the translation files
            fallbackLocale: const Locale(
                'uz','UZ'
            ),
            child:  AppWidget(dbService: AppInit.dbService!,connectivityX: AppInit.connectivityX!,));
      },
    ),);
}

