import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import 'package:signin_register_form/configs/colors.dart';

import 'package:signin_register_form/providers/home_provider/home_provider.dart';
import 'package:signin_register_form/ui/home_screen/list_screen/basket_tab.dart';

import 'list_screen/home_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.homeBackGroundColor,
      body: screenWidget[context.watch<HomeProvider>().index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.homeBackGroundColor,
        unselectedIconTheme: const IconThemeData(
          color: AppColors.unselectedColor,
        ),
        selectedIconTheme: const IconThemeData(
          color: AppColors.backGroundColor,
        ),
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
        ],
        currentIndex: context.watch<HomeProvider>().index,
        onTap: (index) => _onTap(index,context),
      ),
    );
  }

  void _onTap(int index,BuildContext context) {
    context.read<HomeProvider>().setCurrentTab(index);
  }
}

List<Widget> screenWidget = [
  const HomeTab(),
  Container(
    color: Colors.red,
  ),
  Container(
    color: Colors.red,
  ),
  const BasketTab(),
];
