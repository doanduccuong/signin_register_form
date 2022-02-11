import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../configs/colors.dart';

Widget doubleCircle(double insideCircle,double outsideCircle){

  return  CircleAvatar(
    backgroundColor: AppColors.aPrimaryColor,
    radius: outsideCircle.r,
    child: CircleAvatar(
      backgroundColor: AppColors.backGroundColor,
      radius: insideCircle.r,
    ),
  );
}