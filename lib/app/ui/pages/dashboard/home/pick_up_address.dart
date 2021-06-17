import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/form_field_decoration.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';


class PickUpAddress extends StatefulWidget {
  @override
  _PickUpAddressState createState() => _PickUpAddressState();
}

class _PickUpAddressState extends State<PickUpAddress> {
  int _radioValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: ResponsiveSafeArea(builder: (context, size) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
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
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height:
                    DeviceUtils.getScaledHeight(context, scale: 0.02),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            width: 60,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: AppColors.color13,
                            ),
                            child: Container(),
                          ),
                        ),
                        SizedBox(
                          height: DeviceUtils.getScaledHeight(context,
                              scale: 0.03),
                        ),
                        GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back, color: Colors.black)),
                        SizedBox(
                          height: DeviceUtils.getScaledHeight(context,
                              scale: 0.03),
                        ),
                        Text(
                          Strings.step2,
                          style: TextStyle(
                              color: AppColors.appPrimaryColor,
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0,
                              fontFamily: FontFamily.sofiaRegular),
                        ),
                        SizedBox(
                          height: DeviceUtils.getScaledHeight(context,
                              scale: 0.01),
                        ),
                        Text(
                          Strings.pickUpAddress,
                          style: TextStyle(
                              color: AppColors.appPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              fontFamily: FontFamily.sofiaBold),
                        ),
                        SizedBox(
                          height: DeviceUtils.getScaledHeight(context,
                              scale: 0.01),
                        ),
                        Text(
                          Strings.typesAddress,
                          style: TextStyle(
                              color: AppColors.color12,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              fontFamily: FontFamily.sofiaBold),
                        ),
                      ],
                    ),
                  ),

                  // Select Country
                  SizedBox(
                    height:
                    DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.selectCountry,
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
                      DropdownButtonFormField(
                        decoration: textInputDecoration.copyWith(
                            hintText: "Ojay 15"),
                      ),
                    ],
                  ),

                  // Select State/Provice
                  SizedBox(
                    height:
                    DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.selectState,
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
                      DropdownButtonFormField(
                        decoration: textInputDecoration.copyWith(
                            hintText: "Ojay 15"),
                      ),
                    ],
                  ),

                  // Street Name
                  SizedBox(
                    height:
                    DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.streetName,
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
                      TextFormField(
                        autofocus: true,
                        readOnly: true,
                        onTap: (){

                        },
                        decoration: InputDecoration(
                          hintText: 'Ojay 15',
                          hintStyle: TextStyle(
                              color: AppColors.color12,
                              fontFamily: FontFamily.sofiaRegular,
                              fontWeight: FontWeight.normal),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.color12, width: 1.0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.color13, width: 2.0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.color13, width: 2.0),
                              borderRadius: BorderRadius.circular(8),
                              gapPadding: 8.0),

                        ),

                      ),
                    ],
                  ),

                  // House Number
                  SizedBox(
                    height:
                    DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.houseNumber,
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
                      TextFormField(
                        autofocus: true,
                        readOnly: true,
                        onTap: (){

                        },
                        decoration: InputDecoration(
                          hintText: 'Ojay 15',
                          hintStyle: TextStyle(
                              color: AppColors.color12,
                              fontFamily: FontFamily.sofiaRegular,
                              fontWeight: FontWeight.normal),
                          suffixText: 'Choose',
                          suffixStyle: TextStyle(
                              color: AppColors.appPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              fontStyle: FontStyle.italic,
                              fontFamily: FontFamily.sofiaBold),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.color12, width: 1.0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.color13, width: 2.0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.color13, width: 2.0),
                              borderRadius: BorderRadius.circular(8),
                              gapPadding: 8.0),

                        ),

                      ),
                    ],
                  ),

                  // Postal Code
                  SizedBox(
                    height:
                    DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.postalCode,
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
                      TextFormField(
                        autofocus: true,
                        readOnly: true,
                        onTap: (){

                        },
                        decoration: InputDecoration(
                          hintText: 'Ojay 15',
                          hintStyle: TextStyle(
                              color: AppColors.color12,
                              fontFamily: FontFamily.sofiaRegular,
                              fontWeight: FontWeight.normal),
                          suffixText: 'Choose',
                          suffixStyle: TextStyle(
                              color: AppColors.appPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              fontStyle: FontStyle.italic,
                              fontFamily: FontFamily.sofiaBold),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.color12, width: 1.0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.color13, width: 2.0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.color13, width: 2.0),
                              borderRadius: BorderRadius.circular(8),
                              gapPadding: 8.0),

                        ),

                      ),
                    ],
                  ),

                  // Preferred Pickup Date
                  SizedBox(
                    height:
                    DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.preferredPickupDate,
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
                      TextFormField(
                        autofocus: true,
                        readOnly: true,
                        onTap: (){

                        },
                        decoration: InputDecoration(
                          hintText: 'Ojay 15',
                          hintStyle: TextStyle(
                              color: AppColors.color12,
                              fontFamily: FontFamily.sofiaRegular,
                              fontWeight: FontWeight.normal),
                          suffixIcon: Icon(Icons.date_range),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.color12, width: 1.0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.color13, width: 2.0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.color13, width: 2.0),
                              borderRadius: BorderRadius.circular(8),
                              gapPadding: 8.0),

                        ),

                      ),
                    ],
                  ),


                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.08),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.appPrimaryColor),
                      margin: EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                              Strings.nextstep  ,
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 20,
                                fontFamily: FontFamily.sofiaSemiBold,
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
                    height: DeviceUtils.getScaledHeight(context, scale: 0.05),
                  ),
                ],
              ),
            ),
          );
        }
    )
    );
  }
}
