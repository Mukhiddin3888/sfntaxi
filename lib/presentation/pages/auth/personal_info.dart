import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../application/auth/auth_bloc.dart';
import '../../../infrastructure/core/globals.dart';
import '../../../infrastructure/models/auth/auth.dart';
import '../../routes/routes.dart';
import '../../styles/theme.dart';
import '../../styles/theme_warpper.dart';
import '../../widgets/custom_cta_button.dart';
import '../../widgets/custom_textfield.dart';

class PersonalInfoPage extends StatefulWidget {

  final String userName;

  const PersonalInfoPage({Key? key, required this.userName,}) : super(key: key);

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {


  late TextEditingController nameController;
  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1930, 1),
        lastDate: DateTime.now());
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });


      SignUpModel signUpModel = SignUpModel((v) =>
      v
        ..birthday = selectedDate.toString().substring(0,10)
        // ..birthday = int.parse(toDateFormat(selectedDate.toString()))
      );

      context.read<AuthBloc>().add(AuthEvent.postSignUpModel(signUpModel: signUpModel,));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: ThemeWrapper(
        builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
            IconSet icons, CustomTheme controller) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.w, 8.h, 20.w, 10.h),
                child: BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          'personal_info_title'.tr(),
                          style: fonts.semiBold30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12.h, bottom: 24.h),
                          child: Text(
                            'personal_info_subtitle'.tr(),
                            style: fonts.regular16,
                            textAlign: TextAlign.start,
                          ),
                        ),

                        CustomTextFiled(
                          controller: nameController,
                          prefix: Padding(padding: const EdgeInsets.all(11.0),
                            child: SvgPicture.asset(
                              icons.userPrefix, height: 16, width: 16,),
                          ),
                          maxLines: 1,
                          onChanged: (v) {
                            setState(() {});
                          },
                          hintText: 'name_hint'.tr(),
                          keyboardType: TextInputType.text,
                          textCapitalization: TextCapitalization.sentences,
                        ),
                        SizedBox(height: 18.h),
                        ListTile(
                          onTap: () async {
                            _selectDate(context);
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
                          title: Text(state.signUpModel?.birthday == null
                              ? 'birthday_hint'.tr()
                              : selectedDate.toString().substring(0, 10),
                            style: fonts.regular16.copyWith(
                                color: colors.grey, fontSize: 16.sp),
                          ),
                        ),

                      ],
                    );
                  },
                ),
              ),
            ),
            bottomSheet: BlocConsumer<AuthBloc, AuthState>(
              listenWhen: (prev, next) => prev.signUpSuccess != next.signUpSuccess,

              listener: (context, state) {

                if(state.signUpSuccess){

                }

              },
              builder: (context, state) {

                return Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 48.h),
                  child: CustomButtonCTA(
                    color: nameController.text.length > 2 && state.signUpModel?.birthday != null ? colors.main : colors.grey.withOpacity(0.12) ,
                    titleColor: nameController.text.length < 2  && state.signUpModel?.birthday != null ? colors.grey.withOpacity(0.64) : null,
                    onTap: () {
                      if (nameController.text.length > 2 && state.signUpModel?.birthday != null) {
                        SignUpModel signUpModel = SignUpModel((v) => v
                          ..fullName = nameController.text.trim()
                          ..username = widget.userName
                          ..code = ApiHeaderInfo.otpCode
                          ..password = '12345678'
                          ..passwordConfirmation = '12345678'
                          ..birthday = state.signUpModel?.birthday
                          ..type = 'passenger'

                        );

                        context.read<AuthBloc>().add(AuthEvent.postSignUpModel(signUpModel: signUpModel,));
                        context.read<AuthBloc>().add(const AuthEvent.signUp( ));


                      }
                    },
                    child: Text(
                      'confirm'.tr(),
                      style: fonts.medium16.copyWith(color: colors.white),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
