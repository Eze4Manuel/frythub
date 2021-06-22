import 'package:flutter/material.dart';
import 'package:flutter_number_picker/flutter_number_picker.dart';
import 'package:fryghthub/app/controller/buy_a_car_timeline_controller.dart';
import 'package:fryghthub/app/ui/components/next_step_button.dart';
import 'package:fryghthub/app/ui/components/pull_up.dart';
import 'package:fryghthub/app/ui/components/shipping_method_select.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/form_field_decoration.dart';
import 'package:get/get.dart';

class RequestSummary extends StatefulWidget {
  @override
  _RequestSummaryState createState() => _RequestSummaryState();
}

class _RequestSummaryState extends State<RequestSummary> {
  int _radioValue = 0;
  BuyACarTimelineController buyACarTimelineController =
      Get.put(BuyACarTimelineController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25.0), topLeft: Radius.circular(25.0)),
        boxShadow: [
          BoxShadow(
            color: AppColors.color13,
            blurRadius: 25.0, // soften the shadow
            spreadRadius: 2.0, //extend the shadow
            offset: Offset(0.0, 2.0),
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
          PullUpComponent(),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.04),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Strings.requestSummary,
                style: TextStyle(
                    color: AppColors.appPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    fontFamily: FontFamily.sofiaBold),
              ),
              Text(
                "Edit",
                style: TextStyle(
                    color: AppColors.appPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    fontFamily: FontFamily.sofiaBold),
              ),
            ],
          ),

          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.06),
          ),
          Text(
            '1. ${Strings.carinfo}',
            style: TextStyle(
                color: AppColors.appPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                fontFamily: FontFamily.sofiaBold),
          ),

          // About Manufacturer
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.05),
          ),
          Row(
            children: [
              Text(
                Strings.aboutmanufacturer,
                style: TextStyle(
                    color: AppColors.appColor1,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    fontFamily: FontFamily.sofiaBold),
              ),
              SizedBox(
                width: DeviceUtils.getScaledHeight(context, scale: 0.03),
              ),
              Expanded(
                child: Divider(
                  height: 1,
                  endIndent: 3,
                  color: AppColors.color12,
                ),
              )
            ],
          ),

          // Select Car Manufacturer
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.04),
          ),
          Text(
            Strings.selectCarManufacturerLabel,
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
          ),

          // Select Car Model
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.04),
          ),
          Text(
            Strings.selectmodel,
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
          ),

          // Select Year of Manufacturer
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.04),
          ),
          Text(
            Strings.selectyearofmanufactuer,
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
          ),

          // Select Milliage Range
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.04),
          ),
          Text(
            Strings.setmilliage,
            style: TextStyle(
                color: AppColors.appColor1,
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
                fontFamily: FontFamily.sofiaRegular),
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.01),
          ),
          Row(
            children: [
              Flexible(
                child: TextFormField(
                  decoration:
                      textInputDecoration.copyWith(hintText: "Min Milliage"),
                  validator: (val) => val.isEmpty ? 'Name' : null,
                  onChanged: (val) {},
                ),
              ),
              SizedBox(
                width: DeviceUtils.getScaledHeight(context, scale: 0.04),
              ),
              Flexible(
                child: TextFormField(
                  decoration:
                      textInputDecoration.copyWith(hintText: "Max Milliage"),
                  validator: (val) => val.isEmpty ? 'Name' : null,
                  onChanged: (val) {},
                ),
              )
            ],
          ),

          // Apperance
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.06),
          ),
          Row(
            children: [
              Text(
                Strings.appearance,
                style: TextStyle(
                    color: AppColors.appColor1,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    fontFamily: FontFamily.sofiaBold),
              ),
              SizedBox(
                width: DeviceUtils.getScaledHeight(context, scale: 0.03),
              ),
              Flexible(
                child: Divider(
                  height: 1,
                  endIndent: 3,
                  color: AppColors.color12,
                ),
              )
            ],
          ),

          // Select Color
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.04),
          ),
          Text(
            Strings.selectColor,
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
            decoration: textInputDecoration.copyWith(hintText: "Grey"),
          ),

          // Choose Transmission Type
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.04),
          ),
          Text(
            Strings.chooseTransmission,
            style: TextStyle(
                color: AppColors.appColor1,
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
                fontFamily: FontFamily.sofiaRegular),
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.01),
          ),

          Row(
            children: [
              new Radio(
                value: 2,
                groupValue: _radioValue,
              ),
              new Text(
                'Auto',
                style: new TextStyle(fontSize: 16.0),
              ),
              SizedBox(
                width: DeviceUtils.getScaledWidth(context, scale: 0.03),
              ),
              new Radio(
                value: 2,
                groupValue: _radioValue,
              ),
              new Text(
                'Manual',
                style: new TextStyle(fontSize: 16.0),
              ),
            ],
          ),

          // How many Sedan
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.03),
          ),
          Text(
            Strings.howManySedan,
            style: TextStyle(
                color: AppColors.appColor1,
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
                fontFamily: FontFamily.sofiaRegular),
          ),

          //TODO: Use your custom designed widgets
          Container(
            width: DeviceUtils.getScaledHeight(context, scale: 1),
            child: CustomNumberPicker(
              initialValue: 1,
              maxValue: 100,
              minValue: 0,
              step: 10,
              enable: true,
              onValue: (value) {
                print(value.toString());
              },
            ),
          ),

          // Preferred shipping
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.04),
          ),
          Text(
            Strings.preferredShipping,
            style: TextStyle(
                color: AppColors.color6,
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
                fontFamily: FontFamily.sofiaRegular),
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.01),
          ),
          TextFormField(
            readOnly: true,
            autofocus: true,
            decoration: textInputDecoration.copyWith(
              hintText: 'No Shipping Method',
              suffixText: 'Choose',
              suffixStyle: TextStyle(
                  color: AppColors.appPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  fontFamily: FontFamily.sofiaBold),
            ),
            validator: (val) => val.isEmpty ? 'Name' : null,
            onTap: () {
              _shippingMethod(context);
            },
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.08),
          ),

          Text(
            '2. ${Strings.pickUpAddress}',
            style: TextStyle(
                color: AppColors.appPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                fontFamily: FontFamily.sofiaBold),
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.08),
          ),
          Center(
              child: Icon(
                Icons.flag_outlined,
                color: AppColors.color12,
                size: 25,
              )),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context,
                scale: 0.02),
          ),
          Center(
            child: Text(
              Strings.chooseMapAddress,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.color12,
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                  fontFamily: FontFamily.sofiaRegular),
            ),
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.08),
          ),

          Text(
            Strings.preferredPickupDateAndTime,
            style: TextStyle(
                color: AppColors.appColor1,
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
                fontFamily: FontFamily.sofiaRegular),
          ),
          SizedBox(
            height:
            DeviceUtils.getScaledHeight(context, scale: 0.01),
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: textInputDecoration.copyWith(
                    hintText: "Ojay 15",
                    suffixIcon: Icon(Icons.date_range),
                  ),
                  validator: (val) => val.isEmpty ? 'Name' : null,
                  onChanged: (val) {},
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
            height: DeviceUtils.getScaledHeight(context, scale: 0.08),
          ),

          Text(
            '3. ${Strings.deliveryAddress}',
            style: TextStyle(
                color: AppColors.appPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                fontFamily: FontFamily.sofiaBold),
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.08),
          ),
          Center(
              child: Icon(
                Icons.flag_outlined,
                color: AppColors.color12,
                size: 25,
              )),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context,
                scale: 0.02),
          ),
          Center(
            child: Text(
              Strings.chooseMapAddress,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.color12,
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                  fontFamily: FontFamily.sofiaRegular),
            ),
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.08),
          ),

          Text(
            Strings.preferredPickupDateAndTime,
            style: TextStyle(
                color: AppColors.appColor1,
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
                fontFamily: FontFamily.sofiaRegular),
          ),
          SizedBox(
            height:
            DeviceUtils.getScaledHeight(context, scale: 0.01),
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: textInputDecoration.copyWith(
                    hintText: "Ojay 15",
                    suffixIcon: Icon(Icons.date_range),
                  ),
                  validator: (val) => val.isEmpty ? 'Name' : null,
                  onChanged: (val) {},
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
            height:
            DeviceUtils.getScaledHeight(context, scale: 0.2),
          ),

          GestureDetector(
            onTap: () {
              buyACarTimelineController.updateTimeline(5);
            },
            child: NextStepButtonComponent(text: 'Proceed To Payment', trailtext: '4/5'),
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.02),
          ),
        ],
      ),
    );
  }
}

_shippingMethod(context) {
  showModalBottomSheet(
      backgroundColor: AppColors.whiteColor,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      context: context,
      builder: (BuildContext bc) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
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
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.02),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.close,
                      color: AppColors.appPrimaryColor,
                    ),
                  )),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.02),
              ),
              Text(
                Strings.chooseShippingMethod,
                style: TextStyle(
                    color: AppColors.appColor1,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    fontFamily: FontFamily.sofiaBold),
              ),
              // Container Select
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.02),
              ),
              GestureDetector(
                onTap: () {},
                child: ShippingMethodSelectComponent(
                    topText: Strings.container,
                    bottomText: Strings.orderWithLess,
                    isSelected: true),
              ),
              // Roll on Roll off  Select
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.02),
              ),
              GestureDetector(
                onTap: () {},
                child: ShippingMethodSelectComponent(
                    topText: Strings.rollOnRollOff,
                    bottomText: Strings.orderWithMore,
                    isSelected: false),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.04),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.appPrimaryColor,
                  ),
                  child: Center(
                    child: Text(
                      Strings.continueText,
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 20,
                        fontFamily: FontFamily.sofiaSemiBold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.02),
              ),
            ],
          ),
        );
      });
}
