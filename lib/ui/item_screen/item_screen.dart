import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signin_register_form/component/text/text_bold.dart';
import 'package:signin_register_form/component/text/text_normal.dart';
import 'package:signin_register_form/configs/colors.dart';
import 'package:signin_register_form/configs/images.dart';
import 'package:signin_register_form/cubit/app_cubit.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeBackGroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 60.h,
          ),
          Row(
            children: [
              SizedBox(width: 29.w),
              InkWell(
                onTap: (){
                  BlocProvider.of<AppCubit>(context).goSearchScreen();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: AppColors.textColor1,
                  size: 30.sp,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.favorite_border,
                color: AppColors.textColor1,
                size: 30.sp,
              ),
              SizedBox(
                width: 50.h,
              ),
            ],
          ),
          //Slider
          SizedBox(
            width: double.infinity,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 264.3.h,
                viewportFraction: 0.7,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                onPageChanged: (index, pageChange) {},
                scrollDirection: Axis.horizontal,
              ),
              items: List.generate(4, (index) {
                return Container(
                  height: 264.3.h,
                  width: 230.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImages.imgIpadLarge),
                          fit: BoxFit.fill)),
                );
              }),
            ),
          ),
          Container(
            height: 16.h,
            width: 72.w,
            color: Colors.red,
          ),
          SizedBox(
            height: 18.h,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: AppColors.textColor,
                  borderRadius: BorderRadius.circular(15.r)),
              child: Column(
                children: [
                  SizedBox(
                    height: 29.h,
                  ),
                  TextBold(
                      title: '2020 Apple iPad Air 10.9"',
                      colors: AppColors.textColor1,
                      size: 28.sp,
                      height: 1.17.h),
                  Padding(
                      padding: EdgeInsets.only(right: 312.w),
                      child: TextBold(
                          title: 'Colors',
                          colors: AppColors.textColor1,
                          size: 17.sp,
                          height: 1.17.h)),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 19.5.w),
                    height: 40.h,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 9.w),
                            height: 40.h,
                            width: 104.w,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.borderColor1),
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 13.w,
                                ),
                                CircleAvatar(
                                  radius: 10.r,
                                  backgroundColor: AppColors.skyBlueColor,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                TextBold(
                                    title: 'SkyBlue',
                                    colors: AppColors.textColor1,
                                    size: 17.sp,
                                    height: 1.15.h)
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 39.h,
                  ),
                  TextBold(
                      title: 'Get Apple TV+ free for a year',
                      colors: AppColors.textColor1,
                      size: 17.sp,
                      height: 1.15.h),
                  SizedBox(
                    height: 7.h,
                  ),
                  SizedBox(
                    height: 61.h,
                    width: 314.w,
                    child: TextNormal(
                      title:
                          'Available when you purchase any new iPhone, iPad, iPod Touch, Mac or Apple TV, £4.99/month after free trial.',
                      size: 15.sp,
                      height: 1.15.h,
                      fontWeight: FontWeight.w400,
                      colors: AppColors.textColor3,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40.w),
                    height: 18.h,
                    child: Row(
                      children: [
                        TextBold(
                            title: 'Full description',
                            colors: AppColors.textColor2,
                            size: 15.sp,
                            height: 1.15.h),
                        const Icon(
                          Icons.arrow_forward,
                          color: AppColors.textColor2,
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 53.w,),
                      TextNormal(title: 'Total',colors: AppColors.textColor1,size: 17.sp,fontWeight: FontWeight.w400,),
                      const Spacer(),
                      TextBold(title: "\$ 579", colors: AppColors.textColor2, size: 22.sp, height: 1.15.h),
                      SizedBox(width: 50.w,)
                    ],
                  ),
                  SizedBox(height: 32.h,),
                  Container(
                    alignment: Alignment.center,
                    height: 70.h,
                    width: 314.w,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColors.textColor2
                    ),
                    child: TextBold(
                      title: 'Add to basket',
                      size: 20.sp,
                      height: 1.15.h,
                      colors: AppColors.textColor,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
