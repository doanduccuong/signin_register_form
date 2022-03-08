import 'dart:html';

import 'package:flutter/material.dart';
import 'package:signin_register_form/component/text/text_normal.dart';
import 'package:signin_register_form/configs/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeBackGroundColor,
      body: Container(
        margin: EdgeInsets.only(left: 29.w, top: 56.h,right: 56.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: AppColors.textColor1,
                  size: 26.sp,
                ),
                SizedBox(width: 113.w),
                TextNormal(
                  title: 'Checkout',
                  size: 18.sp,
                  colors: AppColors.textColor1,
                ),
              ],
            ),
            SizedBox(height: 59.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                SizedBox(width: 24.w,),
                TextNormal(
                  title: 'Shipping information',
                  size: 18.sp,
                  colors: AppColors.textColor1,
                ),
                TextNormal(
                  title: 'change',
                  size: 15.sp,
                  colors: AppColors.backGroundColor,
                ),
              ],
            ),
            SizedBox(height: 16.h,),
            Container(
              alignment: Alignment.center,
              height: 166.h,
              width: 315.w,
              decoration: BoxDecoration(
                  color: AppColors.textColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Container(
                height: 116.h,
                width: 179.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextNormal(title: 'Rosina Doe',size: 15.sp,colors: AppColors.textColor1,),
                    Container(height:36.h,width:190.w,child: TextNormal(title: '43 Oxford Road M13 4GR Manchester, UK',size: 15.sp,colors: AppColors.textColor1,)),
                    TextNormal(title: '+234 9011039271',size: 15.sp,colors: AppColors.textColor1,),
                  ],
                ),
              ),
            ),
            TextNormal(title: 'Payment Method',size: 17.sp,colors: AppColors.textColor1,),
            Container(
              alignment: Alignment.center,
              height: 166.h,
              width: 315.w,
              decoration: BoxDecoration(
                color: AppColors.textColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Container(
                height: 116.h,
                width: 179.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextNormal(title: 'Rosina Doe',size: 15.sp,colors: AppColors.textColor1,),
                    Container(height:36.h,width:190.w,child: TextNormal(title: '43 Oxford Road M13 4GR Manchester, UK',size: 15.sp,colors: AppColors.textColor1,)),
                    TextNormal(title: '+234 9011039271',size: 15.sp,colors: AppColors.textColor1,),
                  ],
                ),
              ),
            ),

          ],
          
        ),
      ),
    );
  }
}
