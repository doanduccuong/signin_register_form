import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:signin_register_form/component/text/text_normal.dart';
import 'package:signin_register_form/cubit/app_cubit.dart';

import '../../configs/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool onTap=false;
    return Scaffold(
      backgroundColor: AppColors.homeBackGroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 52.h,
          ),
          //search field

          Row(
            children: [
              SizedBox(
                width: 29.w,
              ),
              InkWell(
                onTap: () {
                  BlocProvider.of<AppCubit>(context).goHomeScreen();
                },
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
          SizedBox(
            height: 52.h,
          ),
          TextNormal(
            title: 'Found 6 results',
            size: 28.sp,
            height: 1.17.h,
            colors: AppColors.textColor1,
          ),
          //searchField
          // Stack(
          //   children: [
          //     Column(
          //       children: [
          //         SizedBox(
          //           height: 39.66.h,
          //         ),
          //         Container(
          //           height: 212.41.h,
          //           width: 156.w,
          //           decoration: BoxDecoration(
          //             color: AppColors.textColor,
          //             borderRadius: BorderRadius.circular(10.r),
          //           ),
          //         ),
          //       ],
          //     ),
          //     Positioned(
          //       left: 21.w,
          //       child: Column(
          //         children: [
          //           Container(
          //             height: 131.h,
          //             width: 114.w,
          //             decoration:  const  BoxDecoration(
          //               image: DecorationImage(
          //                 fit: BoxFit.fill,
          //                 image: AssetImage(AppImages.imgIpad),
          //               ),
          //             ),
          //           ),
          //           SizedBox(
          //             height: 16.19.h,
          //           ),
          //           SizedBox(
          //             height: 52.h,
          //             width: 79.w,
          //             child: TextNormal(
          //               fontWeight: FontWeight.w600,
          //               title: 'Apple iPad Air',
          //               colors: AppColors.textColor1,
          //               size: 22.sp,
          //               height: 1.15.h,
          //             ),
          //           ),
          //           SizedBox(
          //             height: 7.99.h,
          //           ),
          //           TextNormal(
          //             fontWeight: FontWeight.w700,
          //             title: "From £579",
          //             colors: AppColors.backGroundColor,
          //             size: 17.sp,
          //             height: 1.15.h,
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // )

          //product field
        ],
      ),
    );
  }
}
