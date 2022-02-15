import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signin_register_form/ui/login_screen/login_screen.dart';
import 'package:signin_register_form/ui/splash_screen/splash_screen.dart';

import 'cubit/app_cubit.dart';
import 'cubit/app_cubit_logics.dart';


class SignInApp extends StatefulWidget {
  const SignInApp({Key? key}) : super(key: key);

  @override
  State<SignInApp> createState() => _SignInAppState();
}

class _SignInAppState extends State<SignInApp> {
  final Future<FirebaseApp> _intialization=Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(builder: (context, snapshot) {
      return ScreenUtilInit(
            designSize: const Size(390, 844),
            builder: () => MaterialApp(
              title: 'E-Commerce App',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: BlocProvider<AppCubit>(
                create: (context) => AppCubit(),
                child: const AppCubitLogics(),
              ),
            ),
          );

    },future: _intialization,);
    // return ScreenUtilInit(
    //   designSize: const Size(390, 844),
    //   builder: () => MaterialApp(
    //     title: 'E-Commerce App',
    //     debugShowCheckedModeBanner: false,
    //     theme: ThemeData(
    //       primarySwatch: Colors.blue,
    //     ),
    //     home: BlocProvider<AppCubit>(
    //       create: (context) => AppCubit(),
    //       child: const AppCubitLogics(),
    //     ),
    //   ),
    // );
  }
}
