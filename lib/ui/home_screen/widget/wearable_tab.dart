import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_register_form/component/text/text_normal.dart';
import 'package:signin_register_form/configs/colors.dart';
import 'package:signin_register_form/configs/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signin_register_form/cubit/app_cubit.dart';
import '../../../component/text/text_bold.dart';

class wearableTab extends StatelessWidget {
  const wearableTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    return FutureBuilder<DocumentSnapshot>(
        future: users.doc('0').get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            //print(data['1']['name']);
            return ListView.builder(
              itemBuilder: (context, index) {
                print(data['$index']['image']);
                return InkWell(
                  onTap: () {
                    BlocProvider.of<AppCubit>(context).goSingleItemScreen(data['$index']['image']);
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
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(data['$index']['image']),
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
                                  title: data['$index']['name'],
                                  size: 16.sp,
                                  height: 1.17.h,
                                  fontWeight: FontWeight.w600,
                                  colors: AppColors.bPrimaryColor,
                                ),
                              ),
                              TextBold(
                                title: '"\$${data['$index']['price']}"',
                                colors: AppColors.backGroundColor,
                                size: 17.sp,
                                height: 1.17.h,
                              )
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
        });
  }
}
