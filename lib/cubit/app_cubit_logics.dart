import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_register_form/cubit/app_cubit.dart';
import 'package:signin_register_form/cubit/app_cubit_states.dart';
import 'package:signin_register_form/ui/home_screen/home_screen.dart';
import 'package:signin_register_form/ui/login_screen/login_screen.dart';

import '../ui/splash_screen/splash_screen.dart';
class AppCubitLogics extends StatelessWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubit,CubitStates>(
        builder: (context,state){
          if(state is InitialState){
            return const SplashScreen();
          }
          if(state is SplashState){
            return const SplashScreen();
          }
          if(state is LogInState){
            return const LogInScreen();
          }
          if(state is HomeState){
            return const HomeScreen();
          }
          else {
            return Container(
              color: Colors.red,
            );
          }
        },
      ),
    );
  }
}
