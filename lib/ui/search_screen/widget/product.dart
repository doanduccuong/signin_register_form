import 'package:flutter/material.dart';

import '../../../component/text/text_normal.dart';
import '../../../configs/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../configs/images.dart';
class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 39.66.h,
            ),
            Container(
              height: 212.41.h,
              width: 156.w,
              decoration: BoxDecoration(
                color: AppColors.textColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ],
        ),
        Positioned(
          left: 21.w,
          child: Column(
            children: [
              Container(
                height: 131.h,
                width: 114.w,
                decoration:   const  BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppImages.imgIpad),
                  ),
                ),
              ),
              SizedBox(
                height: 16.19.h,
              ),
              SizedBox(
                height: 52.h,
                width: 79.w,
                child: TextNormal(
                  fontWeight: FontWeight.w600,
                  title: 'Apple iPad Air',
                  colors: AppColors.textColor1,
                  size: 22.sp,
                  height: 1.15.h,
                ),
              ),
              SizedBox(
                height: 7.99.h,
              ),
              TextNormal(
                fontWeight: FontWeight.w700,
                title: "From £579",
                colors: AppColors.backGroundColor,
                size: 17.sp,
                height: 1.15.h,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
