import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../routes/routes.dart';
import '../../styles/theme.dart';
import '../../styles/theme_warpper.dart';

class MenuProfilePage extends StatelessWidget {
  const MenuProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts, IconSet icons, CustomTheme controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              margin: EdgeInsets.fromLTRB(20.w, 36.h, 20.w, 24.h),
              decoration: BoxDecoration(
                color: colors.white,
                borderRadius: BorderRadius.circular(12)

              ),
              child: Column(
                children: [
                  ListTile(
                    onTap: (){
                      Navigator.push(context, Routes.getEditProfilePage(context));
                    },
                    title: Text('personal_info'.tr()),
                    leading: SvgPicture.asset(icons.person,height: 24,width: 24,),
                    trailing: SvgPicture.asset(icons.arrowRight),
                    minVerticalPadding: 0,
                    horizontalTitleGap: 0,
                  ),
                  Divider(color: colors.grey,indent: 52.w),
                  ListTile(
                    onTap: (){
                    },
                    title: Text('call_history'.tr()),
                    leading: SvgPicture.asset(icons.car,height: 24,width: 24,),
                    trailing: SvgPicture.asset(icons.arrowRight),
                    minVerticalPadding: 0,
                    horizontalTitleGap: 0,


                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(8),
              margin: EdgeInsets.fromLTRB(20.w, 0.h, 20.w, 24.h),
              decoration: BoxDecoration(
                color: colors.white,
                borderRadius: BorderRadius.circular(12)

              ),
              child: Column(
                children: [
                  ListTile(
                    onTap: (){
                    },
                    title: Text('news'.tr()),
                    leading: SvgPicture.asset(icons.news,height: 24,width: 24,),
                    trailing: SvgPicture.asset(icons.arrowRight),
                    minVerticalPadding: 0,
                    horizontalTitleGap: 0,
                  ),
                  Divider(color: colors.grey,indent: 52.w),
                  ListTile(
                    onTap: (){
                    },
                    title: Text('contacts'.tr()),
                    leading: SvgPicture.asset(icons.call,height: 24,width: 24,),
                    trailing: SvgPicture.asset(icons.arrowRight),
                    minVerticalPadding: 0,
                    horizontalTitleGap: 0,
                  ),
                  Divider(color: colors.grey,indent: 52.w),
                  ListTile(
                    onTap: (){
                    },
                    title: Text('about_app'.tr()),
                    leading: SvgPicture.asset(icons.info,height: 24,width: 24,),
                    trailing: SvgPicture.asset(icons.arrowRight),
                    minVerticalPadding: 0,
                    horizontalTitleGap: 0,
                  ),
                ],
              ),
            ),
          ],
        );
      },

    );
  }
}
