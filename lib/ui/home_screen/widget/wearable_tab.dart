import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signin_register_form/component/text/text_normal.dart';
import 'package:signin_register_form/configs/colors.dart';
import 'package:signin_register_form/configs/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget wearableTab() {
  return Container(
    padding: EdgeInsets.only(left: 50.w,bottom: 180.h),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: Constants.tabbarTitle.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(right: 34.w),
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
                top:0,
                left: 34.79.w,
                right: 28.w,
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
                bottom: 73.h,
                child: Column(
                  children: [
                    TextNormal(title: 'Apple Watch',size: 22.sp,height: 1.17.h,colors: AppColors.textColor1,)
                  ],
                ),
              )

            ],
          )
        );
      },
    ),
  );
}
