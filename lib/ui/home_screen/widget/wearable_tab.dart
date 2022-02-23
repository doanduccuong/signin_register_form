import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_register_form/component/text/text_normal.dart';
import 'package:signin_register_form/configs/colors.dart';
import 'package:signin_register_form/configs/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signin_register_form/cubit/app_cubit.dart';
import '../../../component/text/text_bold.dart';
Widget wearableTab() {
  return ListView.builder(
    itemBuilder: (context, index) {
      return InkWell(
        onTap: (){
          BlocProvider.of<AppCubit>(context).goSingleItemScreen();
        },
        child: Container(
          margin: EdgeInsets.only(right: 34.w),
          height: 317.52.h,
          width: 220.w,
          child: Stack(
            children: [
              Positioned(
                top: 47.52.h,
                bottom: 0.h,
                child: Container(
                  width: 220.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                left: 34.79.w,
                child: Container(
                  height: 157.21.h,
                  width: 157.21.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        "https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/9/29/637369907197319165_Apple%C2%A0Watch%20SE%20GPS%C2%A040mm%20dai%20dien.png",
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 39.h,
                left: 41.w,
                child: Column(
                  children: [
                    TextNormal(
                      title: 'Apple Watch',
                      size: 22.sp,
                      height: 1.17.h,
                      fontWeight: FontWeight.w600,
                      colors: Colors.black,
                    ),
                    // SizedBox(height: 31.h,),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      child: TextNormal(
                        title: 'Series 6 .RED',
                        size: 16.sp,
                        height: 1.17.h,
                        fontWeight: FontWeight.w600,
                        colors: AppColors.bPrimaryColor,
                      ),
                    ),
                    TextBold(
                        title: '"\$ 359"',
                        colors: AppColors.backGroundColor,
                        size: 17.sp,
                        height: 1.17.h)
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
    scrollDirection: Axis.horizontal,
    itemCount: Constants.tabbarTitle.length,
  );
}
