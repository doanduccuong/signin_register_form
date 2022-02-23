import 'package:flutter/material.dart';



class ItemProvider with ChangeNotifier{
  int _index=1;
  int get index=>_index;
  void setIndex(int index){
    _index=index;
    notifyListeners();
  }
  void setBackIndex(){
    _index=0;
    notifyListeners();
  }
}