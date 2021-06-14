import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';

import 'home/home.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    Home(),
    Home(),
    Home(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColor4,
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        type: BottomNavigationBarType.fixed,
        iconSize: 28,
        backgroundColor: AppColors.whiteColor,
        selectedLabelStyle: TextStyle(color: AppColors.appPrimaryColor),
        selectedItemColor: AppColors.appPrimaryColor,
        unselectedLabelStyle: TextStyle(color: AppColors.color3),
        unselectedItemColor: AppColors.color3,
        currentIndex: _currentIndex,

        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home,),
            title: new Text('Home',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  fontFamily: FontFamily.sofiaBold),),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.reorder,),
            title: new Text('Orders',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  fontFamily: FontFamily.sofiaBold),),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail,),
              title: Text('Messages',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    fontFamily: FontFamily.sofiaBold),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,),
              title: Text('Profile',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    fontFamily: FontFamily.sofiaBold),)
          ),
        ],
      ),
      body: _children[_currentIndex], // new

    );
  }
}
