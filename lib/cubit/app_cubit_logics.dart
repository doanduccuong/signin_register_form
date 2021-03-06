import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_register_form/cubit/app_cubit.dart';
import 'package:signin_register_form/cubit/app_cubit_states.dart';
import 'package:signin_register_form/ui/check_out_screen/check_out_screen.dart';
import 'package:signin_register_form/ui/home_screen/home_screen.dart';
import 'package:signin_register_form/ui/home_screen/list_screen/basket_tab.dart';
import 'package:signin_register_form/ui/login_screen/login_screen.dart';
import 'package:signin_register_form/ui/search_screen/item_not_found_screen.dart';

import 'package:signin_register_form/ui/search_screen/widget/test.dart';
import '../ui/item_screen/item_screen.dart';
import '../ui/search_screen/search_screen.dart';
import '../ui/splash_screen/splash_screen.dart';
class AppCubitLogics extends StatelessWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          if(state is SearchState){
            return const SearchScreen();
          }
          if(state is ItemNotFoundState){
            return const ItemNotFoundScreen();
          }
          if(state is ItemState){
            return const ItemScreen();
          }
          if(state is TestState){
            return const Test();
          }
          if(state is BasketState){
            return const BasketTab();
          }
          if(state is LoadingState){
            return const CircularProgressIndicator();
          }
          if(state is CheckOutState){
            return const CheckOutScreen();
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
