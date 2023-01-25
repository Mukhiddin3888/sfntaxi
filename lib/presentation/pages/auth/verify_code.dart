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

class VerifyCodePage extends StatefulWidget {
  const VerifyCodePage({Key? key, required this.phoneNumber}) : super(key: key);

  final String phoneNumber;

  @override
  State<VerifyCodePage> createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {


  late TextEditingController codeController;


  Timer _timer = Timer(Duration.zero, () {});
  int _start = 30;

  void startTimer() {
    setState(() {
      _start = 30;
    });
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }


  @override
  void initState() {
    super.initState();
    startTimer();
    codeController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    codeController.dispose();
    _timer.cancel();
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
              ((prev.proceedToGetUserInfo != next.proceedToGetUserInfo && next.proceedToGetUserInfo) || (prev.proceedToHome != next.proceedToHome) || (prev.proceedToHomeLogin != next.proceedToHomeLogin && next.proceedToHomeLogin)),

              listener: (context, state) {
                if (state.proceedToGetUserInfo) {
                  ApiHeaderInfo.otpCode = codeController.text.trim();

                  final phoneNumber =
                      '998${widget.phoneNumber.trim().substring(0, widget.phoneNumber.length).replaceAll(' ', '')}';

                  Navigator.pushAndRemoveUntil(
                      context,
                      Routes.getPersonalInfoPage(context, phoneNumber),
                          (route) => false);
                }
                if (state.proceedToHome) {
                  final phoneNumber =
                      '998${widget.phoneNumber.trim().substring(0, widget.phoneNumber.length).replaceAll(' ', '')}';



                  LoginModel loginModel = LoginModel(
                      (v)=>v..username = phoneNumber..code = codeController.text.trim()..password = "12345678"
                  );

                  context.read<AuthBloc>().add(AuthEvent.login(loginModel));

                }
                if(state.proceedToHomeLogin){
                  Navigator.pushAndRemoveUntil(
                      context,
                      Routes.getMainScreenPage(context), (route) => false);
                }
              },
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 8.h, 20.w, 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        'get_code'.tr(),
                        style: fonts.semiBold30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.h, bottom: 24.h),
                        child: Text(
                          '+998 ${widget.phoneNumber}',
                          style: fonts.regular16,
                        ),
                      ),
                      CustomTextFiled(
                        controller: codeController,
                        prefix: Padding(padding: const EdgeInsets.all(11.0),
                          child: SvgPicture.asset(
                            icons.getCodePrefix, height: 16, width: 16,),
                        ),
                        maxLength: 4,
                        onChanged: (v) {
                          setState(() {});
                        },
                        hintText: 'get_code_hint'.tr(),
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 18.h),
                      _start != 0 ? RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'enter_code_desc1'.tr(),
                              style: fonts.light14,
                            ),
                            TextSpan(
                              text: '$_start',
                              style: fonts.medium14.copyWith(
                                  color: colors.main),
                            ),
                            TextSpan(
                              text: 'enter_code_desc2'.tr(),
                              style: fonts.medium14.copyWith(
                                  color: colors.main),
                            ),
                            TextSpan(
                              text: 'enter_code_desc3'.tr(),
                              style: fonts.light14,
                            ),
                          ]))
                          : GestureDetector(
                        onTap: () {
                          context.read<AuthBloc>().add(AuthEvent.reSend(phoneNumber: widget.phoneNumber));
                          startTimer();
                          setState(() {

                          });


                        },
                        child: Text('resend_code'.tr(),
                          style: fonts.medium14.copyWith(
                              color: colors.main),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomSheet: Padding(
              padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 48.h),
              child: CustomButtonCTA(
                color: codeController.text.length == 4 ? colors.main : colors
                    .grey.withOpacity(0.12),
                titleColor: codeController.text.length != 4 ? colors.grey
                    .withOpacity(0.64) : null,
                onTap: () {
                  if (codeController.text.isNotEmpty) {
                    if (codeController.text.length == 4) {
                      final phoneNumber = '998${widget.phoneNumber.trim()
                          .substring(0, widget.phoneNumber.length)
                          .replaceAll(' ', '')}';

                      VerifyCodeModel verifyModel = VerifyCodeModel(
                              (p0) =>
                          p0
                            ..code = codeController.text.trim()
                            ..username = phoneNumber
                      );

                      context.read<AuthBloc>().add(AuthEvent.verify(verifyCodeModel: verifyModel));
                    }
                  }
                },
                child: Text(
                  'confirm'.tr(),
                  style: fonts.medium16.copyWith(color: colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
