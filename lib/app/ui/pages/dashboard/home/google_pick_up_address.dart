import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class GooglePickUpAddress extends StatefulWidget {
  @override
  _GooglePickUpAddressState createState() => _GooglePickUpAddressState();
}

class _GooglePickUpAddressState extends State<GooglePickUpAddress> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: ResponsiveSafeArea(builder: (context, size) {
          return Stack(children: <Widget>[
            Container(
              color: Colors.red,
              child: Text("This is the Widget behind the sliding panel"),
            ),
            Container(
              height: DeviceUtils.getScaledHeight(context, scale: 0.2),
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.03),
                  ),
                  Icon(
                    Icons.arrow_back,
                    color: AppColors.appColor1,
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.03),
                  ),
                  TextFormField(
                    autofocus: true,
                    onTap: () {},
                    decoration: InputDecoration(
                      hintText: 'Search by address',
                      hintStyle: TextStyle(
                          color: AppColors.color12,
                          fontFamily: FontFamily.sofiaRegular,
                          fontWeight: FontWeight.normal),
                      suffixIcon: Icon(
                        Icons.search,
                        color: AppColors.color7,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.color4, width: 1.0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.color4, width: 1.0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: AppColors.color4, width: 1.0),
                          borderRadius: BorderRadius.circular(8),
                          gapPadding: 8.0),
                    ),
                  ),
                ],
              ),
            ),
            SlidingUpPanel(
                minHeight: DeviceUtils.getScaledHeight(context, scale: 0.17),
                padding: EdgeInsets.symmetric(horizontal: 25),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0)),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.color13,
                    blurRadius: 25.0, // soften the shadow
                    spreadRadius: 2.0, //extend the shadow
                    offset: Offset(
                      0.0, // Move to right 10  horizontally
                      2.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
                panel: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: 60,
                              height: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: AppColors.color13,
                              ),
                              child: Container(),
                            ),
                          ),
                          SizedBox(
                            height: DeviceUtils.getScaledHeight(context,
                                scale: 0.04),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                decoration: BoxDecoration(
                                  color: AppColors.appPrimaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(Icons.flag,
                                    color: AppColors.whiteColor),
                              ),
                              SizedBox(
                                width: DeviceUtils.getScaledHeight(context,
                                    scale: 0.01),
                              ),
                              Text(
                                Strings.carPickUpAddress,
                                style: TextStyle(
                                    color: AppColors.appColor1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    fontFamily: FontFamily.sofiaBold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: DeviceUtils.getScaledHeight(context,
                                scale: 0.03),
                          ),
                          (_isSelected)
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                        child: Icon(
                                      Icons.flag,
                                      color: AppColors.color11,
                                      size: 30,
                                    )),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 30.0),
                                      child: Text(
                                        Strings.chooseMapAddress,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: AppColors.color11,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16.0,
                                            fontFamily:
                                                FontFamily.sofiaRegular),
                                      ),
                                    ),
                                  ],
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Divider(),
                                    Container(
                                      height: DeviceUtils.getScaledHeight(context, scale: 0.15),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              flex: 4,
                                              child: Text('data')),
                                          SizedBox(
                                            width: DeviceUtils.getScaledHeight(context,
                                                scale: 0.01),
                                          ),
                                          Icon(Icons.close, color: AppColors.color5)
                                        ],
                                      ),
                                    ),
                                    Divider()
                                  ],
                                ),
                          SizedBox(
                            height: DeviceUtils.getScaledHeight(context,
                                scale: 0.02),
                          ),
                          // Preferred Pickup Date
                          SizedBox(
                            height: DeviceUtils.getScaledHeight(context,
                                scale: 0.02),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Strings.preferredPickupDateAndTime,
                                style: TextStyle(
                                    color: AppColors.appColor1,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16.0,
                                    fontFamily: FontFamily.sofiaRegular),
                              ),
                              SizedBox(
                                height: DeviceUtils.getScaledHeight(context,
                                    scale: 0.01),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      autofocus: true,
                                      readOnly: true,
                                      onTap: () {},
                                      decoration: InputDecoration(
                                        hintText: 'Ojay 15',
                                        hintStyle: TextStyle(
                                            color: AppColors.color12,
                                            fontFamily: FontFamily.sofiaRegular,
                                            fontWeight: FontWeight.normal),
                                        suffixIcon: Icon(Icons.date_range),
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 10.0),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors.color12,
                                              width: 1.0),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColors.color13,
                                              width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: AppColors.color13,
                                                width: 2.0),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            gapPadding: 8.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: DeviceUtils.getScaledHeight(context,
                                        scale: 0.01),
                                  ),
                                  Icon(Icons.close, color: AppColors.color5)
                                ],
                              ),
                              SizedBox(
                                height: DeviceUtils.getScaledHeight(context,
                                    scale: 0.04),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 56,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColors.appPrimaryColor),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '',
                                        style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontSize: 20,
                                          fontFamily: FontFamily.sofiaSemiBold,
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          Strings.nextstep,
                                          style: TextStyle(
                                            color: AppColors.whiteColor,
                                            fontSize: 20,
                                            fontFamily:
                                                FontFamily.sofiaSemiBold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '3/5',
                                        style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontSize: 20,
                                          fontFamily: FontFamily.sofiaSemiBold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: DeviceUtils.getScaledHeight(context,
                                    scale: 0.01),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Google Address
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.05),
                    ),
                  ],
                ))
          ]);
        }));
  }
}
