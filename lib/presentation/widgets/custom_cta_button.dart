import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/theme.dart';
import '../styles/theme_warpper.dart';

class CustomButtonCTA extends StatelessWidget {
  final Color? color;
  final Color? titleColor;
  final double? width;
  final GestureTapCallback? onTap;
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final String? title;

  const CustomButtonCTA({
    Key? key,
     this.child,
    this.color,
    this.width,
    this.onTap,
    this.margin, this.title,
    this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, CustomTheme controller) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            alignment: Alignment.center,
            width: width ?? 1.sw,
            height: 55,
            margin: margin ?? EdgeInsets.zero,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              color: color ?? colors.main,
            ),
            child: child??Text(title??"", style: fonts.medium16.copyWith(color: titleColor ??  colors.white),),
          ),
        );
      },
    );
  }
}
