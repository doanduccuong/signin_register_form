import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:signin_register_form/cubit/app_cubit_states.dart';
import 'package:signin_register_form/firebase_handler/firebase_handler.dart';
import 'package:signin_register_form/ui/home_screen/home_screen.dart';


class AppCubit extends Cubit<CubitStates>{
  AppCubit() : super(InitialState()){
    emit(CheckOutState());
  }


  goLogInScreen() {

    emit(LogInState());
  }
  goHomeScreen(){
    emit(HomeState());
  }
  goSearchScreen(){
    emit(SearchState());
  }
  goSingleItemScreen(String image){
    emit(ItemState(image: image));
  }
  goCheckOutScreen() {

    emit(CheckOutState());
  }



}