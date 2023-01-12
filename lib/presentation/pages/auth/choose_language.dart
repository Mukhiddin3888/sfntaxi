import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sfntaxi/presentation/styles/theme.dart';
import 'package:sfntaxi/presentation/styles/theme_warpper.dart';
import 'package:sfntaxi/presentation/widgets/custom_cta_button.dart';

import '../../routes/routes.dart';


class ChooseLanguagePage extends StatefulWidget {
  const ChooseLanguagePage({Key? key}) : super(key: key);

  @override
  State<ChooseLanguagePage> createState() => _ChooseLanguagePageState();
}

class _ChooseLanguagePageState extends State<ChooseLanguagePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ThemeWrapper(
          builder: (BuildContext context, CustomColorSet colors, FontSet fonts, IconSet icons, CustomTheme controller) {
            return Padding(
              padding:  EdgeInsets.fromLTRB(20.w, 54.h, 20.w, 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('choose_language'.tr(), style: fonts.semiBold30,),
                  Text('choose_language_desc'.tr(), style: fonts.regular16,),
                  SizedBox(
                    height: 24.h,
                  ),
                  ListTile(
                    onTap: () async {

                      // await context.setLocale(const Locale('uz','UZ'));
                      // setState(() {
                      //   index = 0;
                      //
                      // });

                    },
                    minVerticalPadding: 0,
                    contentPadding: EdgeInsets.zero,
                    horizontalTitleGap: 0,
                    leading: SvgPicture.asset(
                      icons.uzb,
                    ),
                    title: const Text('O‘zbek tili'),
                    trailing: SvgPicture.asset(icons.selectedRadio),
                    // trailing: index == 0 ? SvgPicture.asset(icons.selectedRadio): SvgPicture.asset(icons.selectRadio),
                  ),
                  ListTile(
                    onTap: () async {
                      // await context.setLocale(const Locale('ru','RU'));

                      // setState(() {
                      //   index = 1;
                      //   ApiHeaderInfo.appLang = context.locale.languageCode;
                      //
                      //
                      // });

                    },
                    minVerticalPadding: 0,
                    contentPadding: EdgeInsets.zero,
                    horizontalTitleGap: 0,
                    leading: SvgPicture.asset(
                      icons.russian,
                    ),
                    title: const Text('Русский язык'),
                    // trailing:index == 1 ? SvgPicture.asset(icons.selectedRadio): SvgPicture.asset(icons.selectRadio),
                    trailing: SvgPicture.asset(icons.selectRadio),
                  ),

                ],
              ),
            );
          },

        ),
        bottomSheet: Padding(
          padding: EdgeInsets.only(bottom: 48.h, left: 20.w, right: 20.w),
          child: CustomButtonCTA(
              title: 'continue'.tr(),

              onTap: () {
                // Navigator.pushAndRemoveUntil(context, Routes.getOnboardingRoute(context), (route) => false);
              }),
        ),
      ),
    );
  }
}
