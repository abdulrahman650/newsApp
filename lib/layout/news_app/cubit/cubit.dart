import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/layout/news_app/cubit/states.dart';



import '../../../modules/business/business_screen.dart';
import '../../../modules/sciences/sciense_screen.dart';
import '../../../modules/settings/settings_screens.dart';
import '../../../modules/sports/sports_screen.dart';

class NewsCubit extends Cubit<NewsStates>
{
  NewsCubit(NewsStates initialState) : super(initialState);
  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex =0;
  List<BottomNavigationBarItem> bottomItems =[
    BottomNavigationBarItem(
      icon: Icon(
          Icons.business),
      label: 'Business'
    ),
    BottomNavigationBarItem(
        icon: Icon(
            Icons.sports),
        label: 'Sports'
    ),
    BottomNavigationBarItem(
        icon: Icon(
            Icons.science_outlined),
        label: 'Sciense'
    ),
    BottomNavigationBarItem(
        icon: Icon(
            Icons.settings),
        label: 'Settings'
    ),

  ];
  List<Widget> screens =
  [
    BusinessScreen(),
    SportsScreen(),
    ScienseScreen(),
    SettingsScreen(),
  ];
  void changeBottomNavBar(int index)
  {
    currentIndex =index;
    emit(NewsBottomNavState());
  }
}