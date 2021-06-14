
import 'package:flutter/material.dart';
import 'package:flutter_number_picker/flutter_number_picker.dart';
import 'package:fryghthub/app/ui/pages/dashboard/home/pick_up_address.dart';
import 'package:fryghthub/app/ui/widgets/custom_checkbox.dart';
import 'package:fryghthub/app/utils/form_field_decoration.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/utils/device_utils.dart';



class CarInformation extends StatefulWidget {
  @override
  _CarInformationState createState() => _CarInformationState();
}

class _CarInformationState extends State<CarInformation> {
  int _radioValue = 0;

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
                    width: 100,
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
                      scale: 0.04),
                ),
                Text(
                  Strings.carinfo,
                  style: TextStyle(
                      color: AppColors.appPrimaryColor,
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
          // About Manufacturer
          SizedBox(
            height:
            DeviceUtils.getScaledHeight(context, scale: 0.05),
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
                width: DeviceUtils.getScaledHeight(context,
                    scale: 0.03),
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
            height:
            DeviceUtils.getScaledHeight(context, scale: 0.04),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.selectCarManufacturerLabel,
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

          // Select Car Model
          SizedBox(
            height:
            DeviceUtils.getScaledHeight(context, scale: 0.04),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.selectmodel,
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

          // Select Year of Manufacturer
          SizedBox(
            height:
            DeviceUtils.getScaledHeight(context, scale: 0.04),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.selectyearofmanufactuer,
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

          // Select Milliage Range
          SizedBox(
            height:
            DeviceUtils.getScaledHeight(context, scale: 0.04),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.setmilliage,
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
                      decoration: textInputDecoration.copyWith(
                          hintText: "Min Milliage"),
                      validator: (val) =>
                      val.isEmpty ? 'Name' : null,
                      textCapitalization:
                      TextCapitalization.sentences,
                      keyboardType: TextInputType.text,
                      onChanged: (val) {},
                    ),
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledHeight(context,
                        scale: 0.04),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: textInputDecoration.copyWith(
                          hintText: "MAx Milliage"),
                      validator: (val) =>
                      val.isEmpty ? 'Name' : null,
                      textCapitalization:
                      TextCapitalization.sentences,
                      keyboardType: TextInputType.text,
                      onChanged: (val) {},
                    ),
                  )
                ],
              )
            ],
          ),

          // Apperance
          SizedBox(
            height:
            DeviceUtils.getScaledHeight(context, scale: 0.06),
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
                width: DeviceUtils.getScaledHeight(context,
                    scale: 0.03),
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

          // Select Color
          SizedBox(
            height:
            DeviceUtils.getScaledHeight(context, scale: 0.04),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.selectColor,
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
                decoration:
                textInputDecoration.copyWith(hintText: "Grey"),
              ),
            ],
          ),

          // Choose Transmission Type
          SizedBox(
            height:
            DeviceUtils.getScaledHeight(context, scale: 0.04),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.chooseTransmission,
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
                  new Radio(
                    value: 2,
                    groupValue: _radioValue,
                  ),
                  new Text(
                    'Auto',
                    style: new TextStyle(fontSize: 16.0),
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
              )
            ],
          ),
          SizedBox(
            height:
            DeviceUtils.getScaledHeight(context, scale: 0.01),
          ),

          // How many Sedan
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.01),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.howManySedan,
                style: TextStyle(
                    color: AppColors.appColor1,
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                    fontFamily: FontFamily.sofiaRegular),
              ),
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
            ],
          ),

          // Preferred shipping
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.04),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                autofocus: true,
                readOnly: true,
                onTap: (){
                  _shippingMethod(context);
                },
                decoration: InputDecoration(
                  hintText: 'No Shipping Method',
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
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.08),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PickUpAddress()) );
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
                        '2/5',
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
        ],
      ),
    );
  }
}





_shippingMethod(context) {
  showModalBottomSheet(
      backgroundColor: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      context: context,
      builder: (BuildContext bc) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          height: DeviceUtils.getScaledHeight(context, scale: 0.7),
          child: SingleChildScrollView(
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
                  height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.close,
                        color: AppColors.appPrimaryColor,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                ),
                Container(
                  width: DeviceUtils.getScaledHeight(context, scale: 0.35),
                  child: Text(
                    Strings.chooseShippingMethod,
                    style: TextStyle(
                        color: AppColors.appColor1,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        fontFamily: FontFamily.sofiaBold),
                  ),
                ),

                // Container Select
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    height: 80,
                    width: DeviceUtils.getScaledHeight(context, scale: 1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.whiteColor,
                        border: Border.all(width: 1, color: AppColors.appPrimaryColor)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(right: 11.0, top: 11),
                            child: Align(
                                alignment: Alignment.topRight,
                                child: CircleCheckbox(
                                    value: true
                                        ? true
                                        : false,
                                    onChanged: null)
                            )
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: AppColors.color1,
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            SizedBox(
                              width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Strings.container,
                                  style: TextStyle(
                                    color: AppColors.color10,
                                    fontSize: 16,
                                    fontFamily: FontFamily.sofiaSemiBold,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                  DeviceUtils.getScaledWidth(context, scale: 0.01),
                                ),
                                Text(
                                  Strings.orderWithMore,
                                  style: TextStyle(
                                    color: AppColors.color12,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: FontFamily.sofiaRegular,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Roll on Roll off  Select
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    height: 80,
                    width: DeviceUtils.getScaledHeight(context, scale: 1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.whiteColor,
                        border: Border.all(width: 1, color: AppColors.appPrimaryColor)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(right: 11.0, top: 11),
                            child: Align(
                                alignment: Alignment.topRight,
                                child: CircleCheckbox(
                                    value: false
                                        ? true
                                        : false,
                                    onChanged: null)
                            )
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: AppColors.color1,
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            SizedBox(
                              width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Strings.rollOnRollOff,
                                  style: TextStyle(
                                    color: AppColors.color10,
                                    fontSize: 16,
                                    fontFamily: FontFamily.sofiaSemiBold,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                  DeviceUtils.getScaledWidth(context, scale: 0.01),
                                ),
                                Text(
                                  Strings.orderWithLess,
                                  style: TextStyle(
                                    color: AppColors.color12,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: FontFamily.sofiaRegular,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
          ),
        );
      });
}