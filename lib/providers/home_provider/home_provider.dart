import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:signin_register_form/providers/basket_providers/widget/product.dart';

class HomeProvider with ChangeNotifier{
  int _index=0;
  int get index=>_index;
  void setCurrentTab(int chosenTab){
    _index=chosenTab;
    notifyListeners();
  }

}