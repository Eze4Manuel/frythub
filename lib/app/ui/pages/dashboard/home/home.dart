
import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/components/dashboard_feature_select.dart';
import 'package:fryghthub/app/ui/components/dashboard_recent_activities_tabs.dart';
import 'package:fryghthub/app/ui/components/dashboard_slider.dart';
import 'package:fryghthub/app/ui/components/icon_container.dart';
import 'package:fryghthub/app/ui/pages/dashboard/home/ship_a_car/ship_a_car.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';

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
                  mainAxisSize: MainAxisSize.min,
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
                        GestureDetector(
                          onTap: (){
                            _notifications(context);
                          },
                          child: Row(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DashboadrFeatureSelectComponent(context, Strings.shipACar, ShipACar(), false),
                        DashboadrFeatureSelectComponent(context, Strings.buyAndShipACar, ShipACar(), false),
                      ],
                    ),
                    SizedBox(
                      height:
                      DeviceUtils.getScaledHeight(context, scale: 0.02),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DashboadrFeatureSelectComponent(context, Strings.shipALoose, ShipACar(), false),
                        DashboadrFeatureSelectComponent(context, Strings.learnMore, ShipACar(), true),
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
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  separatorBuilder: (context, index) => SizedBox(
                    width: DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  itemBuilder: (context, i){
                      return DashBoardSliderComponent();
                  },
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.04),
              ),

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
                        Text(Strings.viewALl,
                          style: TextStyle(
                              color: AppColors.appPrimaryColor,
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0,
                              fontFamily: FontFamily.sofiaBold),),
                        Icon(Icons.arrow_forward_ios,
                        color: AppColors.appPrimaryColor,
                        size: 13.0,)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.03),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(15, 25, 15, 0),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RecentActivitiesComponent(textTop: '02', textBottom: 'Orders'),
                          Container(height: 45, child: VerticalDivider(color: AppColors.color13)),
                          RecentActivitiesComponent(textTop: '02', textBottom: 'Notification'),

                          Container(height: 45, child: VerticalDivider(color: AppColors.color13)),
                          RecentActivitiesComponent(textTop: '02', textBottom: 'Messages'),
                        ],
                      ),
                      SizedBox(
                        height: DeviceUtils.getScaledHeight(context,
                            scale: 0.03),
                      ),
                      Divider(
                        height: 2,
                        thickness: 1,
                        color: AppColors.color13,
                        indent: 0,
                        endIndent: 0,
                      ),

                      // Recent Tabs
                      Container(
                        height: DeviceUtils.getScaledHeight(context,
                            scale: 0.6),
                        padding: EdgeInsets.only(top: 0, bottom: 20),
                        child: ListView.builder(
                          itemCount: 7,
                          itemBuilder: (context, index) => RecentTabs()
                        ),
                      ),

                    ],
                  )),
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
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      padding: EdgeInsets.symmetric(vertical: 25  , horizontal: 8),
      decoration: BoxDecoration(
          color: AppColors.color2,
          borderRadius: BorderRadius.all(
              Radius.circular(10)
          )
      ),

       child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
             child: IconContainerComponent(context: context, height: 35.0, width: 35.0, isActive: true),
          ),
          Expanded(
            flex: 3,
             child: Column(
               mainAxisSize: MainAxisSize.min,
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
                      'Status: ',
                      style: TextStyle(
                          color: AppColors.color3,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          fontFamily: FontFamily.sofiaBold),
                    ),
                    Text(
                      'Pending',
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
          Flexible(
             child: Column(
               mainAxisSize: MainAxisSize.min,
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

_notifications(context) {
  showModalBottomSheet(
      backgroundColor: AppColors.whiteColor,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      context: context,
      builder: (BuildContext bc) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: DeviceUtils.getScaledHeight(context, scale: 0.8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.04),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Strings.notification,
                  style: TextStyle(
                      color: AppColors.appColor1,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      fontFamily: FontFamily.sofiaBold),
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.02),
              ),
              Container(
                height: DeviceUtils.getScaledHeight(context, scale: 0.65),
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      Divider(
                        height: 4,
                        indent: 10,
                        endIndent: 10,
                        color: AppColors.color3,
                      ),
                  itemCount: 10,
                  itemBuilder: (context, index) => Container(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.13),
                  ),
                ),
              )
            ],
          ),
        );
      });
}

