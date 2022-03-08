import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';
import 'package:signin_register_form/component/text/text_normal.dart';
import 'package:signin_register_form/configs/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signin_register_form/cubit/app_cubit.dart';
import 'package:signin_register_form/providers/basket_providers/basket_providers.dart';
class BasketTab extends StatelessWidget {
  const BasketTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeBackGroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 29.w),
        child: Column(
          children: [
            SizedBox(
              height: 56.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 25.sp,
                  color: AppColors.unselectedColor,
                ),
                TextNormal(
                  title: 'Basket',
                  colors: AppColors.textColor1,
                  fontWeight: FontWeight.w700,
                  size: 18.sp,
                ),
                 InkWell(
                   onTap: () {
                     context.read<BasketProvider>().clearBasket();
                     Provider.of<BasketProvider>(context,listen: false).calculateTotal();
                   },
                   child: const Icon(
                    Icons.delete,
                    color: AppColors.dPrimaryColor,
                ),
                 )
              ],
            ),
            SizedBox(
              height: 47.h,
            ),
            Container(
              alignment: Alignment.center,
              height: 39.h,
              width: 256.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.ePrimaryColor),
              child: TextNormal(
                title: 'Delivery for FREE until the end of the month',
                size: 10.sp,
                colors: AppColors.textColor1,
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: Provider.of<BasketProvider>(context,listen: false).listProductLength,
                itemBuilder: (context, index) {
                  return context.watch<BasketProvider>().listProduct[index];
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextNormal(title: 'Total',size: 17.sp,fontWeight: FontWeight.w400,colors: AppColors.textColor1,),
                TextNormal(title: "${context.watch<BasketProvider>().totalAmount}",size: 22.sp,fontWeight: FontWeight.w700,colors: AppColors.backGroundColor,)
              ],
            ),
            SizedBox(height: 51.h,),
            InkWell(
              onTap: BlocProvider.of<AppCubit>(context).goCheckOutScreen(),
              child: Container(
                alignment: Alignment.center,
                height: 70.h,
                width: 314.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.backGroundColor,
                ),
                child: TextNormal(title: 'Check out',size: 20.sp,),
              ),
            )
          ],
        ),
      )
    );
  }
}
