import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../application/trip/trip_bloc.dart';
import '../../routes/routes.dart';
import '../../styles/theme.dart';
import '../../styles/theme_warpper.dart';
import '../../widgets/custom_cta_button.dart';

class MainSearchPage extends StatelessWidget {
  const MainSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts, IconSet icons, CustomTheme controller) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.w, 24.h, 20.w, 8.h),
            child: BlocBuilder<TripBloc, TripState>(
  builder: (context, state) {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('hi'.tr(), style: fonts.medium16,),
                Padding(
                  padding: EdgeInsets.only(top: 8.h, bottom: 30.h),
                  child: Text('main_title'.tr(), style: fonts.semiBold30,),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: colors.white,
                    borderRadius: BorderRadius.circular(18)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Text(  "choose_type".tr(), style: fonts.semiBold12,),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                       Container(
                         padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),

                         decoration: BoxDecoration(
                           color: colors.grey.withOpacity(0.12),
                           borderRadius: BorderRadius.circular(14)
                         ),
                         child: Row(

                           children: [
                             SvgPicture.asset(icons.profile),
                             Padding(
                               padding: EdgeInsets.only(left: 6.w, right: 16.w),
                               child: Text('passenger'.tr(), style: fonts.regular16,),
                             ),
                             SvgPicture.asset(icons.selectedRadio),

                           ],
                         ),
                       ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
                            decoration: BoxDecoration(
                                color: colors.grey.withOpacity(0.12),
                                borderRadius: BorderRadius.circular(14)

                            ),
                            child: Row(

                         children: [
                             SvgPicture.asset(icons.location),

                             Padding(
                               padding: EdgeInsets.only(left: 6.w, right: 16.w),
                               child: Text('mail'.tr(),style: fonts.regular16,),
                             ),
                             SvgPicture.asset(icons.selectRadio),

                         ],
                       ),
                          ),
                        ],
                      ),
                      SizedBox(height: 18.h,),
                      Divider(color: colors.grey,),
                      Padding(
                        padding: const EdgeInsets.only(top: 14, bottom: 6),
                        child: Text('current_location'.tr(), style: fonts.semiBold12,),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: colors.grey.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(14)
                        ),
                        child: ExpansionTile(
                          title: ListTile(
                            contentPadding: EdgeInsets.zero,
                            minVerticalPadding: 0,
                            horizontalTitleGap: 0,
                            minLeadingWidth: 0,
                            leading: SvgPicture.asset(icons.location, height: 24, width: 24,),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('from'.tr(), style: fonts.regular16.copyWith(color: colors.grey),),
                            ),
                          ),
                          children:  [
                            SizedBox(
                              height: 200.h,
                              child: ListView.separated(
                                itemCount: state.regionsModel?.length ?? 0,
                                itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text('${state.regionsModel?[index]?.name}',style: fonts.regular14),
                                );
                              },
                                separatorBuilder: (BuildContext context, int index) {
                                  return const Divider();
                                },),
                            ),
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6,top: 14),
                        child: Text('destination_location'.tr(), style: fonts.semiBold12,),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: colors.grey.withOpacity(0.12),
                            borderRadius: BorderRadius.circular(14)
                        ),
                        child: ExpansionTile(
                          title: ListTile(
                            contentPadding: EdgeInsets.zero,
                            minVerticalPadding: 0,
                            horizontalTitleGap: 0,
                            minLeadingWidth: 0,
                            leading: SvgPicture.asset(icons.location,height: 24, width: 24,),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('to'.tr(), style: fonts.regular16.copyWith(color: colors.grey),),
                            ),
                          ),
                          children:  [
                            SizedBox(
                              height: 200.h,
                              child: ListView.separated(
                                itemCount: state.regionsModel?.length ?? 0,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text('${state.regionsModel?[index]?.name}',style: fonts.regular14),
                                  );
                                },
                                separatorBuilder: (BuildContext context, int index) {
                                  return const Divider();
                                },),
                            ),
                        ],),
                      ),
                      SizedBox(height: 24.h,),
                      CustomButtonCTA(
                        title: 'search_taxi'.tr(),
                        onTap: (){
                          context.read<TripBloc>().add(const TripEvent.searchTrip(
                              startLocationId: 22,
                              endLocationId: 9,
                              isPostal: 1,
                              isPassenger: 1
                          ));


                      },)

                    ],
                  ),
                ),

              ],
            );
  },
),
          ),
        );
      },
    );
  }
}
