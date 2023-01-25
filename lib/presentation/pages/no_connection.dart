
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../infrastructure/services/connectivity.dart';
import '../../infrastructure/services/db_service.dart';
import '../routes/routes.dart';
import '../styles/theme_warpper.dart';
import '../widgets/custom_cta_button.dart';


class NoConnection extends StatefulWidget {
  const NoConnection({Key? key}) : super(key: key);

  @override
  State<NoConnection> createState() => _NoConnectionState();
}

class _NoConnectionState extends State<NoConnection> {
  Future<void> retry() async {
    EasyLoading.show();
    final result = await ConnectivityX().create();
    if (result) {
      DBService.create.then((value) => Navigator.pushAndRemoveUntil(
          context, Routes.getAppWidget(value,result), (route) => false));
      EasyLoading.dismiss();
      return;
    }
  }
  //TODO: refactor texts

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, c) {
      return Scaffold(
      //  backgroundColor: colors,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 25.h),
              Text('No Connection'.tr(), style: fonts.medium16),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.w),
                child: Text(
                  'Please check it again'.tr(),
                  textAlign: TextAlign.center,
                  style: fonts.medium16,
                ),
              ),
              SizedBox(height: 20.h),
              CustomButtonCTA(
                onTap: retry,
                margin: const EdgeInsets.symmetric(horizontal: 24),
                title: 'retry'.tr(),
              ),
            ],
          ),
        ),
      );
    });
  }
}
