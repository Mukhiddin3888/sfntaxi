part of 'theme.dart';

class IconSet {
  final String russian;
  final String uzb;
  final String selectRadio;
  final String selectedRadio;


  IconSet._({
    required this.russian,
    required this.uzb,
    required this.selectRadio,
    required this.selectedRadio,

  });

  static IconSet get create {
    return IconSet._(
      russian: 'assets/svg/rus.svg',
      uzb: 'assets/svg/uzb.svg',
      selectRadio: 'assets/svg/select.svg',
      selectedRadio: 'assets/svg/selected.svg',
    );
  }
}
