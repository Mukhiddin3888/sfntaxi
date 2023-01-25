import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../application/auth/auth_bloc.dart';
import '../../routes/routes.dart';
import '../../styles/theme.dart';
import '../../styles/theme_warpper.dart';
import '../../widgets/custom_cta_button.dart';
import '../../widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key,}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {

  late TextEditingController numberController;

  @override
  void initState() {
    super.initState();
    numberController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    numberController.dispose();
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
            body: BlocListener<AuthBloc, AuthState>(
              listenWhen: (prev, next) =>
              ((prev.proceedToVerifyCode != next.proceedToVerifyCode &&
                  next.proceedToVerifyCode)),
              listener: (context, state) {
                if (state.proceedToVerifyCode) {
                  Navigator.push(context, Routes.getGetCodeRoute(context, numberController.text.trim()));
                }
              },
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 54.h, 20.w, 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'login'.tr(),
                        style: fonts.semiBold30.copyWith(height: 0),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.h, bottom: 24.h),
                        child: Text(
                          'login_desc'.tr(),
                          style: fonts.regular16,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      CustomTextFiled(
                        prefix: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(width: 14),
                            SvgPicture.asset(
                              icons.call, height: 24, width: 24,),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '+998',
                              style: fonts.regular16,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                        maxLength: 12,
                        hintText: '(--) --- -- --',

                        onChanged: (v) {
                          setState(() {});
                        },
                        formatter: [
                          MaskedTextInputFormatter2(
                              mask: 'xx xxx xx xx', separator: ' ')
                        ],
                        controller: numberController,
                        keyboardType: TextInputType.phone,
                      )
                    ],
                  ),
                ),
              ),
            ),
            bottomSheet: Padding(
              padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 48.h),
              child: CustomButtonCTA(
                  color: numberController.text
                      .trim()
                      .length == 12 ? colors.main : colors.grey.withOpacity(
                      0.12),
                  titleColor: numberController.text
                      .trim()
                      .length == 12 ? null : colors.grey.withOpacity(0.64),
                  onTap: () {
                    if (numberController.text.isNotEmpty) {
                      if (numberController.text
                          .trim()
                          .length == 12) {

                        context.read<AuthBloc>().add(AuthEvent.sendOtpCode(phoneNumber: numberController.text.trim()));
                      }
                    }
                  },
                  title: 'continue'.tr()
              ),
            ),
          );
        },
      ),
    );
  }
}
