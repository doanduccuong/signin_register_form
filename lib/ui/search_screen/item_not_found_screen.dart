import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signin_register_form/component/text/text_bold.dart';
import 'package:signin_register_form/component/text/text_normal.dart';
import 'package:signin_register_form/configs/images.dart';

import '../../configs/colors.dart';
class ItemNotFoundScreen extends StatelessWidget {
  const ItemNotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 52.h,),
          Row(
            children: [
              SizedBox(
                width: 29.w,
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 13.w),
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 26.w),
                height: 60.h,
                width: 267.w,
                child: TextFormField(
                  decoration: InputDecoration(

                    enabledBorder: OutlineInputBorder(
                        borderSide:   BorderSide(color: Colors.black,width: 2.w),
                        borderRadius: BorderRadius.circular(30.r)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide:   BorderSide(color: AppColors.backGroundColor,width: 2.w),
                        borderRadius: BorderRadius.circular(30.r)
                    ),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30.sp,
                      color: Colors.black,
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: AppColors.bPrimaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 17.sp,
                      height: 1.17.h,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r)
                ),
              )
            ],
          ),
          SizedBox(height: 37.h,),
          Container(
            height: 286.h,
            width: 414.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.imgSaly17),
                fit: BoxFit.fill
              )
            ),
          ),
          TextBold(title: 'Item not found', colors: AppColors.textColor1, size: 28.sp, height: 1.15.h),
          SizedBox(height:48.h,width: 314.w,child: TextNormal(title: 'Try a more generic search term or try looking for alternative products.',size: 17.sp,fontWeight: FontWeight.w400,height: 1.17.h,colors: AppColors.textColor3,isCenter: true,))
        ],
      ),
    );
  }
}
