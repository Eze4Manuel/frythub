import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';

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
                  color: AppColors.color3,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  fontFamily: FontFamily.sofiaBold),),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.reorder,),
            title: new Text('Orders',
              style: TextStyle(
                  color: AppColors.color3,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  fontFamily: FontFamily.sofiaBold),),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail,),
              title: Text('Messages',
                style: TextStyle(
                    color: AppColors.color3,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    fontFamily: FontFamily.sofiaBold),)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,),
              title: Text('Profile',
                style: TextStyle(
                    color: AppColors.color3,
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


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSafeArea(
      builder: (context, size) {
        return ListView(
          children: [
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.06),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: Strings.hi,
                            style: TextStyle(
                                color: AppColors.appColor1,
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0,
                                fontFamily: FontFamily.sofiaBold),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Abdulqahar',
                                style: TextStyle(
                                    color: AppColors.appColor1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28.0,
                                    fontFamily: FontFamily.sofiaBold),
                              ),
                            ]),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: DeviceUtils.getScaledWidth(context,
                                scale: 0.01),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: AppColors.color1,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          SizedBox(
                            width: DeviceUtils.getScaledWidth(context,
                                scale: 0.01),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.0),
                  ),
                  Text(
                    'Its a sunny day',
                    style: TextStyle(
                        color: AppColors.color12,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        fontFamily: FontFamily.sofiaBold),
                  ),
                  SizedBox(
                    height:
                    DeviceUtils.getScaledHeight(context, scale: 0.065),
                  ),
                  Text(
                    'Get Started',
                    style: TextStyle(
                        color: AppColors.appColor1,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        fontFamily: FontFamily.sofiaBold),
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 110,
                            width: 160,
                            decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.color13,
                                    blurRadius: 20.0, // soften the shadow
                                    spreadRadius: 0.0, //extend the shadow
                                    offset: Offset(
                                      0.0, // Move to right 10  horizontally
                                      0.0, // Move to bottom 10 Vertically
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: DeviceUtils.getScaledWidth(
                                          context,
                                          scale: 0.01),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: AppColors.color1,
                                          borderRadius:
                                          BorderRadius.circular(8)),
                                    ),
                                    SizedBox(
                                      width: DeviceUtils.getScaledWidth(
                                          context,
                                          scale: 0.01),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: DeviceUtils.getScaledHeight(context,
                                      scale: 0.01),
                                ),
                                Text(
                                  Strings.shipACar,
                                  style: TextStyle(
                                      color: AppColors.appColor1,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                      fontFamily: FontFamily.sofiaBold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 110,
                            width: 160,
                            decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.color13,
                                    blurRadius: 20.0, // soften the shadow
                                    spreadRadius: 0.0, //extend the shadow
                                    offset: Offset(
                                      0.0, // Move to right 10  horizontally
                                      0.0, // Move to bottom 10 Vertically
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: DeviceUtils.getScaledWidth(
                                          context,
                                          scale: 0.01),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: AppColors.color1,
                                          borderRadius:
                                          BorderRadius.circular(8)),
                                    ),
                                    SizedBox(
                                      width: DeviceUtils.getScaledWidth(
                                          context,
                                          scale: 0.01),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: DeviceUtils.getScaledHeight(context,
                                      scale: 0.01),
                                ),
                                Text(
                                  Strings.buyAndShipACar,
                                  style: TextStyle(
                                      color: AppColors.appColor1,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                      fontFamily: FontFamily.sofiaBold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height:
                        DeviceUtils.getScaledHeight(context, scale: 0.02),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 110,
                            width: 160,
                            decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.color13,
                                    blurRadius: 20.0, // soften the shadow
                                    spreadRadius: 0.0, //extend the shadow
                                    offset: Offset(
                                      0.0, // Move to right 10  horizontally
                                      0.0, // Move to bottom 10 Vertically
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: DeviceUtils.getScaledWidth(
                                          context,
                                          scale: 0.01),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: AppColors.color1,
                                          borderRadius:
                                          BorderRadius.circular(8)),
                                    ),
                                    SizedBox(
                                      width: DeviceUtils.getScaledWidth(
                                          context,
                                          scale: 0.01),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: DeviceUtils.getScaledHeight(context,
                                      scale: 0.01),
                                ),
                                Text(
                                  Strings.shipALoose,
                                  style: TextStyle(
                                      color: AppColors.appColor1,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                      fontFamily: FontFamily.sofiaBold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 110,
                            width: 160,
                            decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.color13,
                                    blurRadius: 20.0, // soften the shadow
                                    spreadRadius: 0.0, //extend the shadow
                                    offset: Offset(
                                      0.0, // Move to right 10  horizontally
                                      0.0, // Move to bottom 10 Vertically
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: DeviceUtils.getScaledWidth(
                                          context,
                                          scale: 0.01),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: AppColors.color1,
                                          borderRadius:
                                          BorderRadius.circular(8)),
                                    ),
                                    SizedBox(
                                      width: DeviceUtils.getScaledWidth(
                                          context,
                                          scale: 0.01),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: DeviceUtils.getScaledHeight(context,
                                      scale: 0.01),
                                ),
                                Text(
                                  Strings.learnMore,
                                  style: TextStyle(
                                      color: AppColors.appColor1,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                      fontFamily: FontFamily.sofiaBold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 20.0),
              height: 140.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 300.0,
                    height: 60,
                    decoration: BoxDecoration(
                        color: AppColors.color1,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  Container(
                    width: 300.0,
                    height: 60,
                    decoration: BoxDecoration(
                        color: AppColors.color1,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  Container(
                    width: 300.0,
                    height: 60,
                    decoration: BoxDecoration(
                        color: AppColors.color1,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  Container(
                    width: 300.0,
                    height: 60,
                    decoration: BoxDecoration(
                        color: AppColors.color1,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.02),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Strings.recentActivities,
                        style: TextStyle(
                            color: AppColors.appColor1,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            fontFamily: FontFamily.sofiaBold),
                      ),
                      Row(
                        children: [
                          Text(Strings.viewALl),
                          Container(
                            height: 40,
                            width: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.03),
                ),
                Container(
                    padding:
                    EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: DeviceUtils.getScaledWidth(
                                          context,
                                          scale: 0.01),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: AppColors.color1,
                                          borderRadius:
                                          BorderRadius.circular(8)),
                                    ),
                                    SizedBox(
                                      width: DeviceUtils.getScaledWidth(
                                          context,
                                          scale: 0.01),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: DeviceUtils.getScaledHeight(context,
                                      scale: 0.01),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '02',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: AppColors.appColor1,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                          fontFamily: FontFamily.sofiaBold),
                                    ),
                                    Text(
                                      'Order',
                                      style: TextStyle(
                                          color: AppColors.color3,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0,
                                          fontFamily: FontFamily.sofiaBold),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: DeviceUtils.getScaledWidth(
                                          context,
                                          scale: 0.01),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: AppColors.color1,
                                          borderRadius:
                                          BorderRadius.circular(8)),
                                    ),
                                    SizedBox(
                                      width: DeviceUtils.getScaledWidth(
                                          context,
                                          scale: 0.01),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: DeviceUtils.getScaledHeight(context,
                                      scale: 0.01),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '02',
                                      style: TextStyle(
                                          color: AppColors.appColor1,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                          fontFamily: FontFamily.sofiaBold),
                                    ),
                                    Text(
                                      'Notification',
                                      style: TextStyle(
                                          color: AppColors.color3,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0,
                                          fontFamily: FontFamily.sofiaBold),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: DeviceUtils.getScaledWidth(
                                          context,
                                          scale: 0.01),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: AppColors.color1,
                                          borderRadius:
                                          BorderRadius.circular(8)),
                                    ),
                                    SizedBox(
                                      width: DeviceUtils.getScaledWidth(
                                          context,
                                          scale: 0.01),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: DeviceUtils.getScaledHeight(context,
                                      scale: 0.01),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '02',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: AppColors.appColor1,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                          fontFamily: FontFamily.sofiaBold),
                                    ),
                                    Text(
                                      'Messages',
                                      style: TextStyle(
                                          color: AppColors.color3,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0,
                                          fontFamily: FontFamily.sofiaBold),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: DeviceUtils.getScaledHeight(context,
                              scale: 0.03),
                        ),
                        Divider(
                          height: 10,
                          color: AppColors.color6,
                          indent: 20,
                          endIndent: 20,
                        ),
                        SizedBox(
                          height: DeviceUtils.getScaledHeight(context,
                              scale: 0.03),
                        ),
                        RecentTabs(),
                        RecentTabs(),
                        RecentTabs(),
                        RecentTabs()
                      ],
                    ))
              ],
            ),
          ],
        );
      },
    );
  }
}


class RecentTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      decoration: BoxDecoration(
          color: AppColors.color2,
          borderRadius: BorderRadius.all(
              Radius.circular(10)
          )
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                SizedBox(
                  width: DeviceUtils.getScaledWidth(context, scale: 0.01),
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: AppColors.color1,
                      borderRadius: BorderRadius.circular(8)),
                ),
                SizedBox(
                  width: DeviceUtils.getScaledWidth(context, scale: 0.01),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shipping Sedan 2016',
                  style: TextStyle(
                      color: AppColors.appColor1,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      fontFamily: FontFamily.sofiaBold),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context,
                      scale: 0.01),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Status :',
                      style: TextStyle(
                          color: AppColors.color3,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          fontFamily: FontFamily.sofiaBold),
                    ),
                    Text(
                      'Pending :',
                      style: TextStyle(
                          color: AppColors.color3,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          fontFamily: FontFamily.sofiaBold),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Last Update',
                  style: TextStyle(
                      color: AppColors.color3,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      fontFamily: FontFamily.sofiaBold),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context,
                      scale: 0.01),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '2hrs Ago',
                      style: TextStyle(
                          color: AppColors.color3,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          fontFamily: FontFamily.sofiaBold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
