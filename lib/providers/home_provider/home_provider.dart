import 'package:flutter/cupertino.dart';

class HomeProvider with ChangeNotifier{
  int _index=3;
  int get index=>_index;
  void setCurrentTab(int chosenTab){
    _index=chosenTab;
    notifyListeners();
  }
}