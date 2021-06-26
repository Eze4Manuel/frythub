import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:fryghthub/app/controller/buy_a_car_timeline_controller.dart';
 import 'package:fryghthub/app/controller/keyboard_pickup_controller.dart';
import 'package:fryghthub/app/ui/components/next_step_button.dart';
import 'package:fryghthub/app/ui/components/pull_up.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/form_field_decoration.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';
import 'package:get/instance_manager.dart';
import 'dart:ui';

class KeyboardPickUpAddress extends StatefulWidget {
  @override
  _KeyboardPickUpAddressState createState() => _KeyboardPickUpAddressState();
}

class _KeyboardPickUpAddressState extends State<KeyboardPickUpAddress> {

  BuyACarTimelineController buyACarTimelineController =
  Get.put(BuyACarTimelineController());
  KeyboardPickUpController keyboardPickupController =
  Get.put(KeyboardPickUpController());


  @override
  void initState() {
    super.initState();

    keyboardPickupController.textDateController.text = '';
  }



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
                blurRadius: 25.0,
                spreadRadius: 2.0, //extend the shadow
                offset: Offset(
                  0.0,
                  2.0,
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
                  height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                ),
                PullUpComponent(),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.03),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: Colors.black)),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.03),
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
                  height: DeviceUtils.getScaledHeight(context, scale: 0.01),
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
                  height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                ),
                Text(
                  Strings.typesAddress,
                  style: TextStyle(
                      color: AppColors.color12,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      fontFamily: FontFamily.sofiaBold),
                ),

                // Select Country
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                ),
                Text(
                  Strings.selectCountry,
                  style: TextStyle(
                      color: AppColors.appColor1,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      fontFamily: FontFamily.sofiaRegular),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                ),
                DropdownButtonFormField(
                  decoration: textInputDecoration.copyWith(hintText: "Ojay 15"),
                  items:
                  keyboardPickupController.selectCountry.map((manufacturer) {
                    return new DropdownMenuItem<String>(
                        value: manufacturer, child: Text('$manufacturer'));
                  }).toList(),
                  onChanged: (String newValue) {
                    keyboardPickupController.setSelectCountry(newValue);
                  },
                ),
                // Select State/Provice
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                ),
                Text(
                  Strings.selectState,
                  style: TextStyle(
                      color: AppColors.appColor1,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      fontFamily: FontFamily.sofiaRegular),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                ),
                DropdownButtonFormField(
                  decoration: textInputDecoration.copyWith(hintText: "Ojay 15"),
                  items:
                  keyboardPickupController.selectState.map((manufacturer) {
                    return new DropdownMenuItem<String>(
                        value: manufacturer, child: Text('$manufacturer'));
                  }).toList(),
                  onChanged: (String newValue) {
                    keyboardPickupController.setSelectState(newValue);
                  },
                ),
                // Street Name
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                ),
                Text(
                  Strings.streetName,
                  style: TextStyle(
                      color: AppColors.appColor1,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      fontFamily: FontFamily.sofiaRegular),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                ),
                TextFormField(
                  decoration:
                  textInputDecoration.copyWith(hintText: "Ojay 15"),
                  validator: (val) => val.isEmpty ? 'Name' : null,
                  keyboardType: TextInputType.number,
                  onChanged: (val) {
                    keyboardPickupController.setStreetName(val);
                  },
                ),

                // House Number
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                ),
                Text(
                  Strings.houseNumber,
                  style: TextStyle(
                      color: AppColors.appColor1,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      fontFamily: FontFamily.sofiaRegular),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                ),
                TextFormField(
                  decoration:
                  textInputDecoration.copyWith(hintText: "Ojay 15"),
                  validator: (val) => val.isEmpty ? 'Name' : null,
                  keyboardType: TextInputType.number,
                  onChanged: (val) {
                    keyboardPickupController.setHouseNumber(val);
                  },
                ),

                // Postal Code
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                ),
                Text(
                  Strings.postalCode,
                  style: TextStyle(
                      color: AppColors.appColor1,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      fontFamily: FontFamily.sofiaRegular),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                ),
                TextFormField(
                  decoration:
                  textInputDecoration.copyWith(hintText: "Ojay 15"),
                  validator: (val) => val.isEmpty ? 'Name' : null,
                  keyboardType: TextInputType.number,
                  onChanged: (val) {
                    keyboardPickupController.setPostalCode(val);
                  },
                ),
                // Preferred Pickup Date
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                ),
                Text(
                  Strings.preferredPickupDate,
                  style: TextStyle(
                      color: AppColors.appColor1,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      fontFamily: FontFamily.sofiaRegular),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                ),

                TextFormField(
                  controller: keyboardPickupController.textDateController,
                  readOnly: true,
                  style: TextStyle(
                      color: AppColors.color12,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      fontFamily: FontFamily.sofiaBold),
                  decoration: textInputDecoration.copyWith(
                      hintText: 'Ojay 15', suffixIcon: Icon(Icons.date_range)),
                  validator: (val) => val.isEmpty ? 'Name' : null,
                  onChanged: (val) {},
                  onTap: () {
                    DatePicker.showDatePicker(context,
                        showTitleActions: true,
                        minTime: DateTime(2018, 3, 5),
                        maxTime: DateTime(2022, 6, 7),
                        onChanged: (date) {},
                        onConfirm: (date) {
                          keyboardPickupController.setPreferredPickupDate(date);
                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                  },
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                ),
              ],
            ),
          ),
        );
      }),
      bottomNavigationBar: Container(
        color: AppColors.whiteColor,
        padding: EdgeInsets.only(bottom: 5),
        child: GestureDetector(
            onTap: () {
              // Setting GetX timeline counter to the value of 3
              buyACarTimelineController.updateTimeline(3);
              Navigator.pop(context);
            },
            child: NextStepButtonComponent(
                text: Strings.nextstep, trailtext: '3/5')),
      ),
    );
  }
}
