import 'package:flutter/material.dart';
import 'package:fryghthub/app/controller/buy_a_car_timeline_controller.dart';
import 'package:fryghthub/app/controller/car_information_controller.dart';
import 'package:fryghthub/app/ui/components/form_counter.dart';
import 'package:fryghthub/app/ui/components/next_step_button.dart';
import 'package:fryghthub/app/ui/components/pull_up.dart';
import 'package:fryghthub/app/ui/components/select_shipping_method.dart';
import 'package:fryghthub/app/ui/components/shipping_method_select.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/form_field_decoration.dart';
import 'package:get/get.dart';

class CarInformation extends StatefulWidget {
  @override
  _CarInformationState createState() => _CarInformationState();
}

class _CarInformationState extends State<CarInformation> {
  BuyACarTimelineController buyACarTimelineController =
      Get.put(BuyACarTimelineController());
  CarInformationController carInformationController =
      Get.put(CarInformationController());
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    carInformationController.textController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
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
            Text(
              Strings.carinfo,
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
              Strings.carinfosub,
              style: TextStyle(
                  color: AppColors.color12,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
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
                  width: DeviceUtils.getScaledWidth(context, scale: 0.03),
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
              items:
                  carInformationController.carManufacturer.map((manufacturer) {
                return new DropdownMenuItem<String>(
                    value: manufacturer, child: Text('$manufacturer'));
              }).toList(),
              onChanged: (String newValue) {
                carInformationController.setCurrentCarManufacturer(newValue);
              },
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
              items: carInformationController.carModel.map((model) {
                return new DropdownMenuItem<String>(
                    value: model, child: Text('$model'));
              }).toList(),
              onChanged: (String newValue) {
                carInformationController.setCurrentCarModel(newValue);
              },
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
              items: carInformationController.manufacturerYear.map((year) {
                return new DropdownMenuItem<String>(
                    value: year, child: Text('$year'));
              }).toList(),
              onChanged: (String newValue) {
                carInformationController.setManufacturerYear(newValue);
              },
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
                    keyboardType: TextInputType.number,
                    onChanged: (val) {
                      carInformationController.setMinMilliage(val);
                    },
                  ),
                ),
                SizedBox(
                  width: DeviceUtils.getScaledHeight(context, scale: 0.04),
                ),
                Flexible(
                  child: TextFormField(
                    decoration:
                        textInputDecoration.copyWith(hintText: "Max Milliage"),
                    keyboardType: TextInputType.number,
                    validator: (val) => val.isEmpty ? 'Name' : null,
                    onChanged: (val) {
                      carInformationController.setMaxMilliage(val);
                    },
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
                  width: DeviceUtils.getScaledWidth(context, scale: 0.03),
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
              items: carInformationController.selectColor.map((color) {
                return new DropdownMenuItem<String>(
                    value: color, child: Text('$color'));
              }).toList(),
              onChanged: (String newValue) {
                carInformationController.setCurrentColor(newValue);
              },
              onTap: () {
                FocusScope.of(context).unfocus();
              },
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
                Obx(
                  () => new Radio(
                    value: 0,
                    activeColor: AppColors.appPrimaryColor,
                    groupValue: carInformationController.transmissionType.value,
                    onChanged: carInformationController.setTransmissionType,
                  ),
                ),
                new Text(
                  'Auto',
                  style: TextStyle(
                      color: AppColors.appColor1,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      fontFamily: FontFamily.sofiaRegular),
                ),
                SizedBox(
                  width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                ),
                Obx(
                  () => new Radio(
                    value: 1,
                    activeColor: AppColors.appPrimaryColor,

                    groupValue: carInformationController.transmissionType.value,
                    onChanged: carInformationController.setTransmissionType,
                  ),
                ),
                new Text(
                  'Manual',
                  style: TextStyle(
                      color: AppColors.appColor1,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      fontFamily: FontFamily.sofiaRegular),
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

             SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.03),
            ),
            FormCounter(controller: carInformationController),
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
              controller: carInformationController.textController,
              readOnly: true,
              autofocus: true,
              style: TextStyle(
                  color: AppColors.color6,
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                  fontFamily: FontFamily.sofiaRegular),
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
                _shippingMethod(context, carInformationController);
              },
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.08),
            ),
            GestureDetector(
              onTap: () {
                // Setting GetX timeline counter to the value of 2
                buyACarTimelineController.updateTimeline(2);
              },
              child:
                  NextStepButtonComponent(text: "Next Step", trailtext: '2/5'),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.05),
            ),
          ],
        ),
      ),
    );
  }
}

_shippingMethod(context, carInformationController) {
  showModalBottomSheet(
      backgroundColor: AppColors.whiteColor,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      context: context,
      builder: (BuildContext bc) {
        return ShippingMethod(context: context, controller: carInformationController);
      });
}
