import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/src/provider.dart';

import 'package:signin_register_form/component/text/text_bold.dart';
import 'package:signin_register_form/component/text/text_normal.dart';
import 'package:signin_register_form/configs/colors.dart';


import '../basket_providers.dart';

class Product extends StatelessWidget {
  String image;
  String title;
  double price;
  int index;
  Product({Key? key, required this.image, required this.title, required this.price,required this.index}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      height: 130.h,
      width: 314.w,
      child: Stack(
        children: [
          Positioned(
            top: 14.h,
            left: 15.w,
            bottom: 11.h,
            child:  Image(
              image: NetworkImage(image),
            ),
          ),
          Positioned(
            top: 24.h,
            right: 17.w,
            bottom: 30.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextBold(title: '2020 Apple iPad Air 10.9"', colors: AppColors.textColor1, size: 16.sp, height: 1.5.h),
                TextNormal(title: '\$579.00',size: 15.sp,height: 1.5.h,colors: AppColors.backGroundColor,),
                Row(
                  children: [
                    TextNormal(title: 'Quantity',size: 13.sp,height: 1.5.h,colors: AppColors.textColor1,),
                    Container(width: 20.w,),

                    //minus button
                    InkWell(
                      onTap: ()=>_onTapRemove(context),
                      child: Container(
                        width: 20.w,
                        height: 20.w,
                        child: const Icon(Icons.remove,size: 10,color: AppColors.textColor,),
                        decoration: BoxDecoration(
                            color: AppColors.cPrimaryColor,
                            borderRadius: BorderRadius.circular(4.r)
                        ),
                      ),
                    ),
                    SizedBox(width: 6.w,),
                    Text('${context.watch<BasketProvider>().amount[index]}'),
                    SizedBox(width: 6.w,),
                    //add button
                    InkWell(
                      onTap: ()=> _onTapAdd(context),
                      child: Container(
                        width: 20.w,
                        height: 20.w,
                        child: const Icon(Icons.add,size: 10,color: AppColors.textColor,),

                        decoration: BoxDecoration(
                            color: AppColors.cPrimaryColor,
                            borderRadius: BorderRadius.circular(4.r)
                        ),
                      ),
                    ),
                  ],
                )

              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r), color: Colors.white),
    );
  }
  void _onTapRemove(BuildContext context){
    // Provider.of<BasketProvider>(context,listen: false).setIndex(index1);
    // context.read<BasketProvider>().setIndex(index1);
    Provider.of<BasketProvider>(context,listen: false).setIndex(index);
    Provider.of<BasketProvider>(context,listen: false).decrementAmount(index);
    Provider.of<BasketProvider>(context,listen: false).calculateTotal();

  }
  void _onTapAdd(BuildContext context){
    Provider.of<BasketProvider>(context,listen: false).setIndex(index);
    Provider.of<BasketProvider>(context,listen: false).incrementAmount(index);
    Provider.of<BasketProvider>(context,listen: false).calculateTotal();
  }
}
