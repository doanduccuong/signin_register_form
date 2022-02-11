import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_register_form/component/text/text_normal.dart';
import 'package:signin_register_form/configs/colors.dart';
import 'package:signin_register_form/cubit/app_cubit.dart';
import 'package:signin_register_form/cubit/app_cubit_states.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signin_register_form/ui/login_screen/widget/double_circle.dart';

import '../../component/text/text_bold.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _obscureText = true;
  String _email = '';
  String _password = '';
  late FocusNode _emailFocusNode;
  late FocusNode _passwordFocusNode;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, CubitStates>(
      builder: (context, state) {
        if (state is LogInState) {
          return Scaffold(
            body: Stack(
              children: [
                Container(
                  color: AppColors.backGroundColor,
                ),
                Positioned(
                  top: 26.h,
                  left: 89.w,
                  child: doubleCircle(10, 15),
                ),
                Positioned(
                  child: doubleCircle(10, 15),
                  top: 215,
                  right: 50,
                ),
                Positioned(
                  top: 99.h,
                  left: 55.w,
                  child: TextBold(
                    title: 'Welcome\nback',
                    colors: AppColors.textColor,
                    size: 65.sp,
                    height: 1.07.h,
                  ),
                ),
                Positioned(
                  top: 287.h,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.textColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.r),
                            topRight: Radius.circular(10.r))),
                    height: 609.h,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 36.h, right: 315, bottom: 44.h),
                          child: TextBold(
                              title: 'Login',
                              colors: AppColors.textColor1,
                              size: 18.sp,
                              height: 1.06.h),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.w),
                          child: Form(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //email form feld
                                TextFormField(
                                  key: const ValueKey('email'),
                                  validator: (value) {
                                    if (value!.contains("@") &&
                                        value.contains(".com")) {
                                      return null;
                                    } else {
                                      return "Please enter a valid email";
                                    }
                                  },
                                  focusNode: _emailFocusNode,
                                  decoration:  const InputDecoration(
                                    fillColor: Colors.transparent,
                                    filled: true,
                                    hintText: 'Email',
                                    prefixIcon: Icon(Icons.email),
                                  ),
                                  onSaved: (value) {
                                    _email = value!;
                                  },
                                  onEditingComplete: () =>
                                      FocusScope.of(context)
                                          .requestFocus(_passwordFocusNode),
                                ),
                                SizedBox(
                                  height: 50.h,
                                ),
                                //password form field
                                TextFormField(

                                  obscureText: _obscureText,
                                  key: const ValueKey('password'),
                                  keyboardType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value!.length < 6) {
                                      return 'The password length must larger than 6 ';
                                    } else {
                                      return null;
                                    }
                                  },
                                  focusNode: _passwordFocusNode,
                                  decoration: InputDecoration(
                                    fillColor: Colors.transparent,
                                      suffix: InkWell(
                                          onTap: () {
                                            setState(() {
                                              _obscureText = !_obscureText;
                                            });
                                          },
                                          child: TextNormal(
                                            title:
                                                _obscureText ? 'Show' : 'Hide',
                                            size: 15.sp,
                                            height: 1.05.h,
                                            fontWeight: FontWeight.w600,
                                            colors: AppColors.backGroundColor,
                                          ),),
                                      hintText: 'Password',
                                      prefixIcon: const Icon(Icons.lock)),
                                  onSaved: (value) {
                                    _password = value!;
                                  },
                                  onEditingComplete: _onSubmitForm,
                                ),
                                SizedBox(
                                  height: 24.h,
                                ),
                                InkWell(
                                  onTap: (){},
                                  child: TextNormal(
                                    title: 'For Got Password ?',
                                    size: 15.sp,
                                    height: 1.06.h,
                                    colors: AppColors.backGroundColor,
                                  ),
                                ),
                                SizedBox(height: 62.h,),
                                //on submit button
                                InkWell(
                                  onTap: ()=>_onSubmitForm(),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 70.h,
                                    width: 314.w,
                                    decoration: const BoxDecoration(
                                      color: AppColors.backGroundColor
                                    ),
                                    child: TextBold(title: 'Login',height: 1.06.h,size: 20.sp, colors: AppColors.textColor,),
                                  ),
                                ),
                                SizedBox(height: 19.h,),
                                InkWell(
                                  onTap: (){},
                                  child: Container(margin:EdgeInsets.symmetric(horizontal: 85.w),child: TextBold(title: 'Create account',height: 1.05.h,size:17.sp,colors: AppColors.textColor2,)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }

  void _onSubmitForm() {
    final inValid=_formKey.currentState?.validate();
    FocusScope.of(context).unfocus();

  }
}
