part of 'theme.dart';

class CustomColorSet {
  final Color black;
  final Color white;
  final Color grey;
  final Color main;
  final Color mainLight;
  final Color iconBlack;
  final Color orange;
  final Color green;
  final Color transparent;
  final Color lightOrange;
  final Color lightOrange2;
  final Color lightGrey;
  final Color lightFiolet;

  CustomColorSet._({
    required this.black,
    required this.white,
    required this.grey,
    required this.lightGrey,
    required this.main,
    required this.mainLight,
    required this.iconBlack,
    required this.orange,
    required this.green,
    required this.transparent,
    required this.lightOrange,
    required this.lightOrange2,
    required this.lightFiolet,
  });

  factory CustomColorSet._create(CustomThemeMode mode) {

    const black = Style.black;
    const white = Style.white;
    const grey = Style.grey;
    const lightGrey = Style.lightGrey;
    const main = Style.main;
    const mainLight = Style.mainLight;
    const iconBlack = Style.iconBlack;
    const orange = Style.orange;
    const green = Style.green;
    const transparent = Style.transparent;
    const lightOrange = Style.lightOrange;
    const lightOrange2 = Style.lightOrange2;
    const lightFiolet = Style.lightFiolet;

    // final grey = isLight ? Style.grey : Style.bgDarkV;

    // final backgroundColor = isLight ? Style.white : Style.bgDark;

    return CustomColorSet._(
        black: black,
        lightOrange: lightOrange,
        lightOrange2: lightOrange2,
        white: white,
        lightGrey: lightGrey,
        grey: grey,
        main: main,
        mainLight: mainLight,
        iconBlack: iconBlack,
        orange: orange,
        green: green,
        lightFiolet: lightFiolet,
        transparent: transparent);
  }

  static CustomColorSet createOrUpdate(CustomThemeMode mode) {
    return CustomColorSet._create(mode);
  }
}
