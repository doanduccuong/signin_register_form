import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signin_register_form/app.dart';
import 'package:signin_register_form/ui/login_screen/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(() {
    runApp(const SignInApp());
  }, (error, stackTrace) {});
  // runApp(SignInApp());
}
