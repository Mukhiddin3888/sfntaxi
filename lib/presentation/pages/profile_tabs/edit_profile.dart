import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../application/profile/profile_bloc.dart';
import '../../styles/theme.dart';
import '../../styles/theme_warpper.dart';
import '../../widgets/custom_cta_button.dart';
import '../../widgets/custom_textfield.dart';


class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {


  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts, IconSet icons, CustomTheme controller) {
        return  Scaffold(
          resizeToAvoidBottomInset: false,
            backgroundColor: colors.white,
            appBar: AppBar(
              leading: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(icons.arrowBack),
                ),
              ),
              title: Text('personal_info'.tr(), style: fonts.medium16,),
              centerTitle: true,

            ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: BlocBuilder<ProfileBloc, ProfileState>(
  builder: (context, state) {

    return Column(
                children: [
                  SizedBox(height: 20.h,),
                  CustomTextFiled(
                      isReadOnly: true,
                      maxLength: 1, hintText: state.meUserModel?.fullName ?? 'name_hint'.tr(),
                      prefix: Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: SvgPicture.asset(icons.person, height: 12,width: 12,),
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 14.h, bottom: 14.h),
                    child:ListTile(
                      onTap: () async {
                        // _selectDate(context);
                      },
                      tileColor: colors.grey.withOpacity(0.12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      horizontalTitleGap: 0,
                      minVerticalPadding: 0,
                      contentPadding: EdgeInsets.zero,
                      leading: Padding(
                        padding:
                        const EdgeInsets.only(left: 14, right: 8),
                        child: SvgPicture.asset(
                          icons.birthdayPrefix, height: 24, width: 24,),
                      ),
                      title: Text(state.meUserModel?.birthday ?? 'birthday_hint'.tr(),
                        style: fonts.regular16.copyWith(
                            color: colors.grey, fontSize: 16.sp),
                      ),
                    ),
                  ),

                  CustomTextFiled(maxLength: 1, hintText: state.meUserModel?.username ??  '',
                      isReadOnly: true,

                      prefix: Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: SvgPicture.asset(icons.call, height: 12,width: 12,),
                      )),

                  SizedBox(height: 14.h,),
                  const Divider(thickness: 1,),

                  Container(
                    margin: EdgeInsets.only(top: 14.h, bottom: 14.h),
                    decoration: BoxDecoration(
                      color: colors.backgroundColor,
                      borderRadius: BorderRadius.circular(14)
                    ),
                    child: ListTile(
                      horizontalTitleGap: 0,
                      title: Text('O‘zbek tili', style: fonts.regular16,),
                      leading: SvgPicture.asset(icons.uzb),
                      trailing: SvgPicture.asset(icons.selectedRadio),

                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: colors.backgroundColor,
                      borderRadius: BorderRadius.circular(14)
                    ),
                    child: ListTile(
                      horizontalTitleGap: 0,
                      title: Text('Русский язык', style: fonts.regular16,),
                      leading: SvgPicture.asset(icons.russian),
                      trailing: SvgPicture.asset(icons.selectRadio),

                    ),
                  ),

                ],
              );
  },
),
            ),
          ),
          bottomSheet: Padding(
            padding:  EdgeInsets.only(bottom: 48.h, right: 20.w, left: 20.w),
            child: CustomButtonCTA(title: 'save_changes'.tr(),),
          ),

        ) ;
      },
    );
  }
}
