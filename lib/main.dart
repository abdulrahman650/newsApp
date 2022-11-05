// @dart=2.9

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newsapp/shared/bloc_observer.dart';


import 'layout/news_app/news_layout.dart';
import 'layout/todo_app/todo_layout.dart';
import 'modules/counter/counter_screen.dart';
import 'modules/login/login_screen.dart';



void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black87,
          ),
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black45,
            statusBarBrightness: Brightness.light,
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Colors.black87,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange[300],
          elevation: 20.0,
        )
      ),
      debugShowCheckedModeBanner: false,
      home: NewsLayout(),
    );

  }
}
