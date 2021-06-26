import 'package:flutter/material.dart';
import 'package:fryghthub/app/controller/buy_a_car_timeline_controller.dart';
import 'package:fryghthub/app/controller/pickup_address_controller.dart';
import 'package:fryghthub/app/ui/components/next_step_button.dart';
import 'package:fryghthub/app/ui/components/pull_up.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/form_field_decoration.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';
import 'package:get/instance_manager.dart';

class KeyboardDeliveryAddress extends StatefulWidget {
  @override
  _KeyboardDeliveryAddressState createState() => _KeyboardDeliveryAddressState();
}

class _KeyboardDeliveryAddressState extends State<KeyboardDeliveryAddress> {
  int _radioValue = 0;

  BuyACarTimelineController buyACarTimelineController =
  Get.put(BuyACarTimelineController());
  PickUpAddressController pickUpAddressController =
  Get.put(PickUpAddressController());

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
                offset: Offset( 0.0, 2.0, ),
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
                  Strings.step3,
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
                  Strings.deliveryAddress,
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
                  pickUpAddressController.selectCountry.map((manufacturer) {
                    return new DropdownMenuItem<String>(
                        value: manufacturer, child: Text('$manufacturer'));
                  }).toList(),
                  onChanged: (String newValue) {
                    pickUpAddressController.setSelectCountry(newValue);
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
                  pickUpAddressController.selectState.map((manufacturer) {
                    return new DropdownMenuItem<String>(
                        value: manufacturer, child: Text('$manufacturer'));
                  }).toList(),
                  onChanged: (String newValue) {
                    pickUpAddressController.setSelectState(newValue);
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
                    pickUpAddressController.setStreetName(val);
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
                    pickUpAddressController.setHouseNumber(val);
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
                    pickUpAddressController.setPostalCode(val);
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
                  decoration:
                  textInputDecoration.copyWith(hintText: 'Ojay 15', suffixIcon: Icon(Icons.date_range)),
                  validator: (val) => val.isEmpty ? 'Name' : null,
                  onChanged: (val) {},
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
              onTap: (){

                // Setting GetX timeline counter to the value of 4
                buyACarTimelineController.updateTimeline(4);
                Navigator.pop(context);
              },
              child: NextStepButtonComponent(text: Strings.nextstep, trailtext: '4/5')),
      ),
    );
  }
}
