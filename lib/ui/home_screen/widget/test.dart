import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 67.48.h,left: 50.w,bottom: 180),
      color: Colors.red,
      child: Container(
        color: Colors.blue,
      )
    );
  }
}
