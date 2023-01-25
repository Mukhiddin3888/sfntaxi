import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sfntaxi/presentation/styles/theme_warpper.dart';

import '../../styles/theme.dart';
import '../../widgets/custom_cta_button.dart';


class TaxiPage extends StatelessWidget {
  const TaxiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts, IconSet icons, CustomTheme controller) {
        return Scaffold(
          backgroundColor: colors.backgroundColor,
          appBar: AppBar(
            leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: SvgPicture.asset(icons.arrowBack),
              ),
            ),
            title: Column(
              children: [
                Text('COBALT (2020)', style: fonts.semiBold16,),
                Text('Muhiddin Sirojiddinov', style: fonts.regular14.copyWith(color: colors.grey),)
              ],
            ),
            centerTitle: true,

          ),
          body: SingleChildScrollView(
            child: Column(
              children: [

                Container(
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.only(bottomRight: Radius.circular(18), bottomLeft: Radius.circular(18)),
                    color: colors.white,

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CachedNetworkImage(
                                height: 84.h,
                                width: 82.w,
                                imageUrl: "https://file.kelles.com/kbb/base/evox/CP/10292/2015-Chevrolet-Spark-front_10292_032_2400x1800_GAZ.png",
                                imageBuilder: (context, imageProvider) => Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) => Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: colors.backgroundColor,

                                  ),
                                  height: 84.h,
                                  width: 82.w,
                                ),
                              ),
                              SizedBox(height: 8.h,),

                              CachedNetworkImage(
                                height: 84.h,
                                width: 82.w,
                                imageUrl: "https://file.kelleybluebookimages.015-Chevrolet-Spark-front_10292_032_2400x1800_GAZ.png",
                                imageBuilder: (context, imageProvider) => Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) => Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: colors.backgroundColor,

                                  ),
                                  height: 84.h,
                                  width: 82.w,
                                ),
                              ),
                              SizedBox(height: 8.h,),
                              CachedNetworkImage(
                                height: 84.h,
                                width: 82.w,
                                imageUrl: "https://file.kelleybluebookimages.com/kbb/base/evox/CP/10292/2015-Chevrolet-Spark-.png",
                                imageBuilder: (context, imageProvider) => Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) => Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: colors.backgroundColor,

                                  ),
                                  height: 84.h,
                                  width: 82.w,
                                ),
                              ),
                              SizedBox(height: 8.h,),

                              CachedNetworkImage(
                                height: 84.h,
                                width: 82.w,
                                // imageUrl: "https://file.kelleybluebookimages.com/kbb/base/evox/CP/10292/2015-Chevrolet-Spark-front_10292_032_2400x1800_GAZ.png",
                                imageUrl: "",
                                imageBuilder: (context, imageProvider) => Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) => Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: colors.backgroundColor,

                                  ),
                                  height: 84.h,
                                  width: 82.w,
                                ),
                              ),

                            ],
                          ),
                        ),
                        Flexible(
                            flex: 3,
                            child:  CachedNetworkImage(
                              height: 380.h,
                              // width: 82.w,
                              imageUrl: "",
                              // imageUrl: "https://file.kelleybluebookimages.com/kbb/base/evox/CP/10292/2015-Chevrolet-Spark-front_10292_032_2400x1800_GAZ.png",
                              imageBuilder: (context, imageProvider) => Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                              errorWidget: (context, url, error) => Container(
                                margin: EdgeInsets.only(left: 8.w, bottom: 10.h, top: 8.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: colors.backgroundColor,

                                ),
                                 height: 380.h,
                                // width: 82.w,
                              ),
                            ),)
                      ],
                    ),
                  ),
                ),

                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 6.h),
                      decoration: BoxDecoration(
                        color: colors.white,
                        borderRadius: BorderRadius.circular(18)
                      ),
                      child:  ListTile(
                        leading: const CircleAvatar(child: Icon(Icons.person)),
                        title: Text('Muhiddin Sirojiddinov',style: fonts.medium16.copyWith(fontSize: 18.sp),),
                        subtitle: Text('100,000 U / 1 kishiga',style: fonts.regular16),
                      ),
                    ),
                    Positioned(
                        top: 6,
                        right: 2,
                        child: Image(image: AssetImage(icons.topBannerRight, ),height: 52.h,width: 52.w,))
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(top: 6.h),
                  decoration: BoxDecoration(
                      color: colors.white,
                      borderRadius: BorderRadius.circular(18)
                  ),
                  child:  ListTile(
                    title: Text('MASHINA TURI',style: fonts.semiBold12.copyWith(color: colors.grey),),
                    subtitle: Text('Cobalt (2020)',style: fonts.regular16.copyWith(fontSize: 20.sp),),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('MASHINA RAQAMI',style: fonts.semiBold12.copyWith(color: colors.grey),),
                        Text('70A726XB',style: fonts.regular16.copyWith(fontSize: 20.sp)),
                      ],
                    ),
                  ),
                ),


                Container(
                  margin: EdgeInsets.only(top: 6.h, bottom: 6.h),
                  decoration: BoxDecoration(
                      color: colors.white,
                      borderRadius: BorderRadius.circular(18)
                  ),
                  child: Column(
                    children: [

                      ListTile(
                        title: Text('condior'.tr()),
                        leading: SvgPicture.asset(icons.news),
                        trailing: SvgPicture.asset(icons.done),
                      ),
                      Divider(color: colors.grey.withOpacity(0.12),indent: 60.w,thickness: 1,),

                      ListTile(
                        title: Text('additional_box'.tr()),
                        leading: SvgPicture.asset(icons.call),
                        trailing: SvgPicture.asset(icons.no),
                      ),
                      Divider(color: colors.grey.withOpacity(0.12),indent: 60.w,thickness: 1),
                      ListTile(
                        title: Text('chargers'.tr()),
                        leading: SvgPicture.asset(icons.info),
                        trailing: SvgPicture.asset(icons.done),
                      ),
                      Divider(color: colors.grey.withOpacity(0.12),indent: 60.w,thickness: 1),
                      ListTile(
                        title: Text('pech'.tr()),
                        leading: SvgPicture.asset(icons.info),
                        trailing: SvgPicture.asset(icons.done),
                      ),

                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(20.w, 18.h, 20.w, 48.h),
                    decoration: BoxDecoration(
                      color: colors.white,
                    ),
                    child: CustomButtonCTA(color: colors.green,title: 'call'.tr(),))



              ],
            ),
          ),
        );
      },

    );
  }
}
