part of 'theme.dart';

class IconSet {
  final String russian;
  final String uzb;
  final String selectRadio;
  final String selectedRadio;
  final String call;
  final String getCodePrefix;
  final String userPrefix;
  final String birthdayPrefix;
  final String search;
  final String profile;
  final String car;
  final String info;
  final String news;
  final String person;
  final String arrowRight;
  final String location;
  final String box;
  final String arrowBack;
  final String filter;
  final String topBanner;
  final String topBannerRight;
  final String done;
  final String no;
  final String message;


  IconSet._({
    required this.russian,
    required this.uzb,
    required this.selectRadio,
    required this.selectedRadio,
    required this.call,
    required this.getCodePrefix,
    required this.userPrefix,
    required this.birthdayPrefix,
    required this.search,
    required this.profile,
    required this.car,
    required this.news,
    required this.person,
    required this.info,
    required this.arrowRight,
    required this.location,
    required this.box,
    required this.arrowBack,
    required this.filter,
    required this.topBanner,
    required this.topBannerRight,
    required this.done,
    required this.no,
    required this.message,

  });

  static IconSet get create {
    return IconSet._(
      russian: 'assets/svg/rus.svg',
      uzb: 'assets/svg/uzb.svg',
      call: 'assets/svg/call.svg',
      selectRadio: 'assets/svg/select.svg',
      selectedRadio: 'assets/svg/selected.svg',
      getCodePrefix: 'assets/svg/getcodeprefix.svg',
      userPrefix: 'assets/svg/userprefix.svg',
      birthdayPrefix: 'assets/svg/birthdayprefix.svg',
      search: 'assets/svg/search.svg',
      profile: 'assets/svg/profile.svg',
      car: 'assets/svg/car.svg',
      info: 'assets/svg/info.svg',
      person: 'assets/svg/person.svg',
      news: 'assets/svg/news.svg',
      arrowRight: 'assets/svg/arrowright.svg',
      location: 'assets/svg/location.svg',
      box: 'assets/svg/box.svg',
      arrowBack: 'assets/svg/arrowBack.svg',
      filter: 'assets/svg/filter.svg',
      topBanner: 'assets/img/top.png',
      topBannerRight: 'assets/img/topRight.png',
      done: 'assets/svg/done.svg',
      no: 'assets/svg/no.svg',
      message: 'assets/svg/message.svg',
    );
  }
}
