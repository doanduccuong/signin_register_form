import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:signin_register_form/component/text/text_bold.dart';
import 'package:signin_register_form/component/text/text_normal.dart';
import 'package:signin_register_form/configs/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signin_register_form/configs/constants.dart';
import 'package:signin_register_form/configs/images.dart';
import 'package:signin_register_form/ui/home_screen/widget/test.dart';
import 'package:signin_register_form/ui/home_screen/widget/wearable_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController =
        TabController(length: Constants.tabbarTitle.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeBackGroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 47.h,
          ),
          //Search Field
          Row(
            children: [
              SizedBox(
                width: 55.w,
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(AppImages.imgVector),
              ),
              Container(
                padding: EdgeInsets.only(left: 13.w),
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 26.w),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30.r),
                ),
                height: 60.h,
                width: 267.w,
                child: TextFormField(
                  decoration: InputDecoration(
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
                      )),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                right: 121.w, left: 50.w, top: 55.h, bottom: 56.h),
            height: 80.h,
            width: 243.w,
            child: TextBold(
              title: 'Order online collect in store',
              colors: AppColors.textColor1,
              size: 34.sp,
              height: 1.17.h,
            ),
          ),
          //tab bar
          Padding(
            padding: EdgeInsets.only(left: 54.w,right: 0.w),
            child: TabBar(
              isScrollable: true,
              controller: _tabController,
              tabs: List.generate(
                Constants.tabbarTitle.length,
                (index) {
                  return SizedBox(
                    height: 87.h,
                    child: Tab(
                      icon: const Icon(null),
                      child: TextNormal(
                        colors: Colors.black,
                        title: 'Wearable',
                        size: 17.sp,
                        height: 1.17.h,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 67.48.h),
          // // tabbar view
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Test(),
                wearableTab(),
                wearableTab(),
                wearableTab(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
