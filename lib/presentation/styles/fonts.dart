part of 'theme.dart';

class FontSet {
  final TextStyle bold28;
  final TextStyle bold26;
  final TextStyle bold22;
  final TextStyle bold24;
  final TextStyle bold16;
  final TextStyle bold12;
  final TextStyle semiBold30;
  final TextStyle semiBold24;
  final TextStyle semiBold18;
  final TextStyle semiBold13;
  final TextStyle semiBold16;
  final TextStyle regular16;
  final TextStyle regular12;
  final TextStyle regular14;
  final TextStyle medium16;
  final TextStyle medium14;
  final TextStyle medium13;
  final TextStyle light14;
  final TextStyle regular24;

  FontSet._({
    required this.bold28,
    required this.bold26,
    required this.bold24,
    required this.bold22,
    required this.bold16,
    required this.bold12,
    required this.semiBold18,
    required this.semiBold24,
    required this.semiBold30,
    required this.semiBold13,
    required this.semiBold16,
    required this.regular16,
    required this.regular12,
    required this.medium16,
    required this.medium14,
    required this.medium13,
    required this.light14,
    required this.regular24,
    required this.regular14,
  });

  static FontSet createOrUpdate(CustomColorSet colors) {
    return FontSet._(
      bold28: Style.bold28(size: 28.sp, color: colors.black),
      bold16: Style.bold16(size: 16.sp, color: colors.black),
      bold26: Style.bold26(size: 26.sp, color: colors.black),
      bold24: Style.bold24(size: 24.sp, color: colors.black),
      bold22: Style.bold22(size: 22.sp, color: colors.black),
      bold12: Style.bold12(size: 12.sp, color: colors.black),
      semiBold30: Style.semiBold30(size: 30.sp, color: colors.black),
      semiBold24: Style.semiBold24(size: 24.sp, color: colors.black),
      semiBold16: Style.semiBold16(size: 16.sp, color: colors.black),
      semiBold13: Style.semiBold13(size: 13.sp, color: colors.black),
      semiBold18: Style.semiBold18(size: 18.sp, color: colors.black),
      regular16: Style.regular16(size: 16.sp, color: colors.black),
      regular12: Style.regular12(size: 12.sp, color: colors.black),
      medium16: Style.medium16(size: 16.sp, color: colors.black),
      medium14: Style.medium14(size: 14.sp, color: colors.black),
      medium13: Style.medium13(size: 13.sp, color: colors.black),
      light14: Style.light14(size: 14.sp, color: colors.black),
      regular24: Style.regular24(size: 24.sp,color:colors.black),
      regular14: Style.regular14(size: 14.sp,color:colors.black)
    );
  }
}
