import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:signin_register_form/app.dart';
import 'package:signin_register_form/providers/basket_providers/basket_providers.dart';
import 'package:signin_register_form/providers/home_provider/home_provider.dart';
import 'package:signin_register_form/providers/item_provider/item_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runZonedGuarded(() {
    runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_)=>ItemProvider()),
            ChangeNotifierProvider(create: (_) =>BasketProvider()),
            ChangeNotifierProvider(create: (_)=> HomeProvider()),
          ],
      child:  const SignInApp(),),
    );
  }, (error, stackTrace) {});
  // runApp(SignInApp());
}
