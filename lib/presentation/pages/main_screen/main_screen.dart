
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../application/trip/trip_bloc.dart';
import '../../../infrastructure/api/abiz_apis.dart';
import '../../../infrastructure/repositories/trip_repo.dart';
import '../../../infrastructure/services/db_service.dart';
import '../../styles/theme.dart';
import '../../styles/theme_warpper.dart';
import '../main_search/main_search_page.dart';
import '../profile/main_profile_page.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectIndex = 0;

  List<Widget> screens = [];


  @override
  void initState() {
    super.initState();


    screens = [
      const MainSearchPage(),
      const MenuProfilePage(),

    ];


  }


  @override
  Widget build(BuildContext context) {

    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, CustomTheme controller) {
        return Scaffold(
          backgroundColor: colors.backgroundColor,
          body: SafeArea(child: BlocProvider(
              create: (BuildContext context)=> TripBloc(TripRepository(context.read<DBService>(), TripService.create()))..add(const TripEvent.getRegions()),
              child: screens[selectIndex])),
          bottomNavigationBar: SizedBox(
            height: 90.h,
            child: BottomNavigationBar(
              backgroundColor: colors.white,
              showUnselectedLabels: true,
              selectedFontSize: 12.sp,
              showSelectedLabels: true,
              currentIndex: selectIndex,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              unselectedLabelStyle: TextStyle(color: colors.black),
              selectedLabelStyle: TextStyle(color: colors.main),
              selectedItemColor: colors.main,
              onTap: (val) {
                setState(() {
                  selectIndex = val;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(icons.search),
                    label: 'menu_search'.tr(),
                  activeIcon: SvgPicture.asset(icons.search, color: colors.main,)
                ),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                         icons.profile),

                    label: 'menu_profile'.tr(),
                    activeIcon: SvgPicture.asset(icons.profile, color: colors.main,)

                ),


              ],
            ),
          ),
        );
      },
    );
  }
}
