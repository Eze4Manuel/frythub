import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'icon_container.dart';

// TODO Convert All Functions TO STATELESS Widgets

Widget DashboadrFeatureSelectComponent(context, text, screen, isSet){
  return GestureDetector(
    onTap: (){
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => screen));
    },
    child: Container(
      height: 110,
      width: 160,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.color13,
              blurRadius: 0.0, // soften the shadow
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
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: (isSet) ? Transform.rotate(
                  angle: 40,
                  child: Icon(Icons.arrow_back_ios_sharp, size: 20, color: AppColors.appPrimaryColor,))
              :
                null
            )
          ),
          IconContainerComponent(context: context, height: 45.0, width: 45.0, isActive: true,),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context,
                scale: 0.01),
          ),
          Text(
            text,
            style: TextStyle(
                color: AppColors.appColor1,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                fontFamily: FontFamily.sofiaBold),
          )
        ],
      ),
    ),
  );
}


