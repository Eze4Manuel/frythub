import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/ui/widgets/timeline.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';

class ShipACar extends StatefulWidget {
  @override
  _ShipACarState createState() => _ShipACarState();
}

class _ShipACarState extends State<ShipACar> {

  List listValue = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColor4,
      body: ResponsiveSafeArea(
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
                    GestureDetector(
                      onTap: (){
                       _car_information(context, listValue);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: Strings.shipACar,
                                style: TextStyle(
                                    color: AppColors.appColor1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    fontFamily: FontFamily.sofiaBold),
                                children: <TextSpan>[]),
                          ),
                          Icon(
                            Icons.close,
                            color: AppColors.appPrimaryColor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.0),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 35.0),
                      child: Text(
                        Strings.shipACarSubtext,
                        style: TextStyle(
                            color: AppColors.color12,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            fontFamily: FontFamily.sofiaBold),
                      ),
                    ),
                    SizedBox(
                      height:
                          DeviceUtils.getScaledHeight(context, scale: 0.065),
                    ),
                    Container(
                      height: 70,
                      width: DeviceUtils.getScaledHeight(context, scale: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Timeline(
                              isFirst: true,
                              isLast: false,
                              icon: Icons.car_rental,
                              color: AppColors.appPrimaryColor,
                              text: 'Step 1/6'),
                          Timeline(
                              isFirst: false,
                              isLast: false,
                              icon: Icons.flag,
                              color: AppColors.color13,
                              text: ''),
                          Timeline(
                              isFirst: false,
                              isLast: false,
                              icon: Icons.pin_drop_outlined,
                              color: AppColors.color13,
                              text: ''),
                          Timeline(
                              isFirst: false,
                              isLast: false,
                              icon: Icons.waves,
                              color: AppColors.color13,
                              text: ''),
                          Timeline(
                              isFirst: false,
                              isLast: false,
                              icon: Icons.credit_card,
                              color: AppColors.color13,
                              text: ''),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

_car_information(context, listValue) {
  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      context: context,
      builder: (BuildContext bc) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          height: DeviceUtils.getScaledHeight(context, scale: 0.85),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context,
                      scale: 0.04),
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        Strings.carinfo,
                        style: TextStyle(
                            color: AppColors.appColor1,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            fontFamily: FontFamily.sofiaBold),
                      ),
                      SizedBox(
                        height: DeviceUtils.getScaledHeight(context,
                            scale: 0.01),
                      ),
                      Text(
                        Strings.carinfosub,
                        style: TextStyle(
                            color: AppColors.color12,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            fontFamily: FontFamily.sofiaBold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context,
                      scale: 0.04),
                ),
                Row(
                  children: [
                    Text(
                      Strings.carinfo,
                      style: TextStyle(
                          color: AppColors.appColor1,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          fontFamily: FontFamily.sofiaBold),
                    ),
                    SizedBox(
                      width: DeviceUtils.getScaledHeight(context,
                          scale: 0.01),
                    ),
                    Divider(
                      height: 10,
                       color: AppColors.appPrimaryColor,
                    )
                  ],
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context,
                      scale: 0.04),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(Strings.selectCarManufacturerLabel,
                      style: TextStyle(
                          color: AppColors.appColor1,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          fontFamily: FontFamily.sofiaBold),),
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context,
                          scale: 0.01),
                    ),
                    DropdownButtonFormField(
                        decoration: textInputDecoration.copyWith(hintText: "Ojay 15"),

                    ),
                  ],
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context,
                      scale: 0.04),
                ),
                TextFormField(
                  decoration: textInputDecoration.copyWith(hintText: "Name *"),
                  validator: (val) => val.isEmpty ? 'Name' : null,
                  textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.text,
                  onChanged: (val) {

                  },
                ),

              ],
            ),
          ),
        );
      });
}


InputDecoration textInputDecoration = InputDecoration(

  hintStyle: TextStyle(color: AppColors.color12, fontFamily: FontFamily.sofiaBold,),
  contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide (color: AppColors.color12, width: 1.0),
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide (color: AppColors.color12, width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide (color: AppColors.color4, width: 4.0),
      gapPadding: 8.0
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide (color: AppColors.color7, width: 2.0),
  ),

);
