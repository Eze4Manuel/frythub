import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/pages/dashboard/home/ship_a_car/google_delivery_address.dart';
import 'package:fryghthub/app/ui/pages/dashboard/home/ship_a_car/keyboard_delivery_address.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/utils/device_utils.dart';

class DeliveryAddressSelect extends StatefulWidget {
  @override
  _DeliveryAddressSelectState createState() => _DeliveryAddressSelectState();
}

class _DeliveryAddressSelectState extends State<DeliveryAddressSelect> {
  int _radioValue = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: DeviceUtils.getScaledHeight(context, scale: 0.7),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25.0), topLeft: Radius.circular(25.0)),
        boxShadow: [
          BoxShadow(
            color: AppColors.color13,
            blurRadius: 25.0, // soften the shadow
            spreadRadius: 2.0, //extend the shadow
            offset: Offset( 0.0, 2.0 ),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.02),
          ),
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
            height: DeviceUtils.getScaledHeight(context, scale: 0.04),
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
            Strings.setdeliverDrop,
            style: TextStyle(
                color: AppColors.color12,
                fontWeight: FontWeight.normal,
                fontSize: 14.0,
                fontFamily: FontFamily.sofiaRegular),
          ),

          // Google Address
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.05),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GoogleDeliveryAddress()));
            },
            child: PickUpAddressSelectComponent(
              leadIcon: Icons.add_location,
              text: Strings.useGoogle,
            ),
          ),

          // Keyboard Address
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.02),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => KeyboardDeliveryAddress()));
            },
            child: PickUpAddressSelectComponent(
              leadIcon: Icons.keyboard,
              text: Strings.typesAddress,
            ),
          ),
        ],
      ),
    );
  }
}

class PickUpAddressSelectComponent extends StatelessWidget {
  IconData leadIcon;
  String text;

  PickUpAddressSelectComponent({this.leadIcon, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      decoration: BoxDecoration(
          color: AppColors.color2,
          border: Border.all(
            color: AppColors.color4,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                SizedBox(
                  width: DeviceUtils.getScaledWidth(context, scale: 0.01),
                ),
                Icon(
                  leadIcon,
                  color: AppColors.appPrimaryColor,
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
                  text,
                  style: TextStyle(
                      color: AppColors.appColor1,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      fontFamily: FontFamily.sofiaRegular),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.play_arrow,
                  color: AppColors.appPrimaryColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
