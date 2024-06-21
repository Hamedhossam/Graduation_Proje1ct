import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:scm/Services/canteen_services.dart';
import 'package:scm/modules/login/login_screen.dart';
import 'package:scm/shared/bloc_observer.dart';
import 'package:scm/shared/styles/color.dart';

import 'modules/loading/loading_screen.dart';
import 'modules/login_new/login_new.dart';
import 'modules/main_screen_child/main_screen_child.dart';
import 'modules/reset_password_screens/home.dart';
import 'modules/teacher/teacher_main_screen.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kPrimarywhiteColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              foregroundColor: kPrimarywhiteColor,
              backgroundColor: kPrimaryColor,
              shape: const StadiumBorder(),
              maximumSize: const Size(double.infinity, 56),
              minimumSize: const Size(double.infinity, 56),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: kPrimaryLightColor,
            iconColor: kPrimaryColor,
            prefixIconColor: kPrimaryColor,
            suffixIconColor: kPrimaryColor,
            contentPadding: EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide.none,
            ),
          )),
      debugShowCheckedModeBanner: false,
      home: LoginNew(),
    );
  }
}
