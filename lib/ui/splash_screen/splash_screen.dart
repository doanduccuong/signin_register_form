import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_register_form/component/text/text_bold.dart';
import 'package:signin_register_form/configs/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signin_register_form/configs/images.dart';
import 'package:signin_register_form/cubit/app_cubit.dart';
import 'package:signin_register_form/cubit/app_cubit_states.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, CubitStates>(builder: (context, state) {
      if (state is SplashState) {
        return Container(
          decoration: const BoxDecoration(
            color: AppColors.backGroundColor,
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70.h,left: 51.w,right: 65.w),
                child: TextBold(
                  title: 'Find your Gadget',
                  colors: AppColors.textColor,
                  size: 65.sp,
                  height: 1.07.h,
                ),
              ),
              Image.asset(AppImages.imgSaly19),
             InkWell(
               onTap: (){
                 BlocProvider.of<AppCubit>(context).goLogInScreen();
               },
               child: Container(
                 alignment: Alignment.center,
                 decoration:  BoxDecoration(
                   borderRadius: BorderRadius.circular(10.r),
                   color: AppColors.textColor,
                 ),
                 height: 70.h,
                 width: 314.w,
                 child: TextBold(colors: AppColors.textColor2, height: 1.06.h, size: 20.sp, title: 'Get started',),
               ),
             )

            ],
          ),
        );
      } else {
        return Container(
          color: Colors.red,
        );
      }
    });
  }
}
