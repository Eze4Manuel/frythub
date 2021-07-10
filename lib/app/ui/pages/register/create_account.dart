import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fryghthub/app/controller/account_creation_controller.dart';
import 'package:fryghthub/app/controller/checkbox_toggle_controller.dart';
import 'package:fryghthub/app/ui/pages/register/user_contact.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/widgets/custom_checkbox.dart';
import 'package:fryghthub/app/ui/widgets/custom_textfield_widget.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:get/get.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  final _formKey = GlobalKey<FormState>();
  final AccountCreationController accountCreationController =
  Get.put(AccountCreationController());
  final CheckboxToggleController checkboxToggleController =
  Get.put(CheckboxToggleController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Transform.translate(
          offset: Offset(-15, 0),
          child: Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
        ),
        elevation: 0.0,
        iconTheme: IconThemeData(color: AppColors.appColor1),
        backgroundColor: AppColors.whiteColor,
      ),
      body: ResponsiveSafeArea(builder: (context, size) {
        return Form(
          key: _formKey,
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(left: 33),
                child: Text(
                  Strings.createAccount,
                  style: TextStyle(
                      color: AppColors.appColor1,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                      fontFamily: FontFamily.sofiaBold),
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.02),
              ),
              Container(
                margin: EdgeInsets.only(left: 33),
                child: Text(
                  Strings.fillDetails,
                  style: TextStyle(
                      color: AppColors.appColor2,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      fontFamily: FontFamily.sofiaMedium),
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.06),
              ),
              GestureDetector(
                onTap: () {
                  _changeAccountType(context);
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Strings.accountType,
                        style: TextStyle(
                          color: AppColors.color5,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: FontFamily.sofiaBold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: AppColors.color5,
                        size: 16,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.06),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      width: 80,
                      height: 48,
                      child: Icon(
                        FontAwesomeIcons.google,
                        color: AppColors.whiteColor,
                        size: 18,
                      ),
                      decoration: BoxDecoration(
                          color: AppColors.color7,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledWidth(context, scale: 0.04),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      width: 80,
                      height: 48,
                      decoration: BoxDecoration(
                          color: AppColors.color8,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        FontAwesomeIcons.facebookSquare,
                        color: AppColors.whiteColor,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.024),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 1,
                      color: AppColors.color9,
                    ),
                    SizedBox(
                      width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                    ),
                    Text(
                      Strings.or,
                      style: TextStyle(
                        color: AppColors.color10,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: FontFamily.sofiaBold,
                      ),
                    ),
                    SizedBox(
                      width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                    ),
                    Container(
                      width: 100,
                      height: 1,
                      color: AppColors.color9,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.024),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      Strings.firstName,
                      style: TextStyle(
                        color: AppColors.color6,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.sofiaMedium,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, right: 32),
                    child: TextFieldWidget(
                      hint: Strings.firstName,
                      fontSize: 14,
                      hintColor: AppColors.color11,
                      borderSideColor: AppColors.color9,
                      autoFocus: true,
                      onChanged: (value) => accountCreationController.setFirstName(value),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter First Name';
                        }
                        return null;
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.02),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      Strings.lastName,
                      style: TextStyle(
                        color: AppColors.color6,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.sofiaMedium,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18, right: 32),
                    child: TextFieldWidget(
                      // enabled: false,
                      hint: Strings.lastName,
                      fontSize: 14,
                      hintColor: AppColors.color11,
                      borderSideColor: AppColors.color9,
                      autoFocus: true,
                      onChanged: (value) => accountCreationController.setLastName(value),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter Last name';
                        }
                        return null;
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.02),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      Strings.email,
                      style: TextStyle(
                        color: AppColors.color6,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: FontFamily.sofiaMedium,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18, right: 32.0),
                    child: TextFieldWidget(
                      hint: Strings.email,
                      fontSize: 14,
                      hintColor: AppColors.color11,
                      borderSideColor: AppColors.color9,
                      autoFocus: true,
                      onChanged: (value) => accountCreationController.setEmail(value),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter Email';
                        }
                        return null;
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.04),
              ),
              GestureDetector(
                onTap: () {
                  if(_formKey.currentState.validate()) {
                    _setUsername(context);
                  }
                },
                child: Container(
                  height: 56,
                  // width: 311,
                  margin: EdgeInsets.only(left: 32, right: 32),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.appPrimaryColor,
                  ),
                  child: Center(
                    child: Text(
                      Strings.Next,
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 20,
                        fontFamily: FontFamily.sofiaSemiBold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  _setUsername(context) {
    showModalBottomSheet(
        backgroundColor: AppColors.whiteColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        context: context,
        isScrollControlled: true,
        builder: (BuildContext bc) {
          return Container(
            height: DeviceUtils.getScaledHeight(context, scale: 0.6),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 26.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          icon: Icon(FontAwesomeIcons.times),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 32),
                    child: Text(
                      Strings.setUsername,
                      style: TextStyle(
                          color: AppColors.appColor1,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          fontFamily: FontFamily.sofiaBold),
                    ),
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 32),
                    child: RichText(
                      text: TextSpan(
                          text: Strings.hi,
                          style: TextStyle(
                              color: AppColors.appColor1,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              fontFamily: FontFamily.sofiaBold),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Abdul',
                              style: TextStyle(
                                  color: AppColors.appColor1,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  fontFamily: FontFamily.sofiaBold),
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.017),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0, right: 32),
                    child: Text(
                      Strings.createAccountMessage,
                      style: TextStyle(
                          color: AppColors.appColor2,
                          // fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          fontFamily: FontFamily.sofiaMedium),
                    ),
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Text(
                          Strings.username,
                          style: TextStyle(
                            color: AppColors.color6,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: FontFamily.sofiaMedium,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0, right: 32),
                        child: TextFieldWidget(
                          fontSize: 14,
                          hintColor: AppColors.color11,
                          borderSideColor: AppColors.color9,
                          autoFocus: true,
                          hint: Strings.username,
                          onChanged: (value) => accountCreationController.setUserName(value),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter Username';
                            }
                            return null;
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  GestureDetector(
                    onTap: () {
                      if(_formKey.currentState.validate()){
                      Navigator.push(
                          context,
                        MaterialPageRoute(
                            builder: (context) => UserContact()));
                      }
                    },
                    child: Container(
                      height: 56,
                      // width: 311,
                      margin: EdgeInsets.only(left: 32, right: 32),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.appPrimaryColor,
                      ),
                      child: Center(
                        child: Text(
                          Strings.Next,
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 20,
                            fontFamily: FontFamily.sofiaSemiBold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }



  void _changeAccountType(context) {
    showModalBottomSheet(
        backgroundColor: AppColors.whiteColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        context: context,
        isScrollControlled: true,
        builder: (BuildContext bc) {
          return Container(
            height: DeviceUtils.getScaledHeight(context, scale: 0.8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 26.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          icon: Icon(FontAwesomeIcons.times),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      Strings.accountType,
                      style: TextStyle(
                          color: AppColors.appColor1,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          fontFamily: FontFamily.sofiaBold),
                    ),
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      Strings.preferredAccount,
                      style: TextStyle(
                          color: AppColors.appColor2,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          fontFamily: FontFamily.sofiaMedium),
                    ),
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  GestureDetector(
                    onTap: () {
                      accountCreationController.setAccountType(Strings.userAction);
                      checkboxToggleController.updateCheckbox(Strings.userAction);

                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 32, right: 32),
                      height: 100,
                      width: 312,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.appPrimaryColor,
                        // border: Border.all(width: 1, color: AppColors.color5)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 11.0, top: 11),
                            child: Align(
                                alignment: Alignment.topRight,
                                child: GetBuilder<CheckboxToggleController>(
                                  init: checkboxToggleController,
                                  builder: (_) {
                                    return CircleCheckbox(
                                        value: checkboxToggleController.userAction
                                            ? true
                                            : false,
                                        onChanged: null);
                                  },
                                )),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: DeviceUtils.getScaledWidth(context,
                                    scale: 0.03),
                              ),
                              Container(
                                height: 56,
                                width: 56,
                                decoration: BoxDecoration(
                                    color: AppColors.color1,
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              SizedBox(
                                width: DeviceUtils.getScaledWidth(context,
                                    scale: 0.03),
                              ),
                              Text(
                                Strings.userAction,
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 20,
                                  fontFamily: FontFamily.sofiaSemiBold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                  ),
                  GestureDetector(
                    onTap: () {
                      accountCreationController.setAccountType(Strings.buyingAgent);
                      checkboxToggleController.updateCheckbox(Strings.buyingAgent);

                    },
                    child: Container(
                      height: 100,
                      width: 312,
                      margin: EdgeInsets.only(left: 32, right: 32),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.appPrimaryColor,
                          border: Border.all(width: 1, color: AppColors.color5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 11.0, top: 11),
                            child: Align(
                                alignment: Alignment.topRight,
                                child: GetBuilder<CheckboxToggleController>(
                                  init: checkboxToggleController,
                                  builder: (_) {
                                    return CircleCheckbox(
                                        value: checkboxToggleController.buyingAgent
                                            ? true
                                            : false,
                                        onChanged: null);
                                  },
                                ))
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: DeviceUtils.getScaledWidth(context,
                                    scale: 0.03),
                              ),
                              Container(
                                height: 56,
                                width: 56,
                                decoration: BoxDecoration(
                                    color: AppColors.color1,
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              SizedBox(
                                width: DeviceUtils.getScaledWidth(context,
                                    scale: 0.03),
                              ),
                              Text(
                                Strings.buyingAgent,
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 20,
                                  fontFamily: FontFamily.sofiaSemiBold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                  ),
                  GestureDetector(
                    onTap: () {
                      accountCreationController.setAccountType(Strings.deliveryAgent);
                      checkboxToggleController.updateCheckbox(Strings.deliveryAgent);

                    },
                    child: Container(
                      height: 100,
                      width: 312,
                      margin: EdgeInsets.only(left: 32, right: 32),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.appPrimaryColor,
                          border: Border.all(width: 1, color: AppColors.color5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 11.0, top: 11),
                            child:Align(
                                alignment: Alignment.topRight,
                                child: GetBuilder<CheckboxToggleController>(
                                  init: checkboxToggleController,
                                  builder: (_) {
                                    return CircleCheckbox(
                                        value: checkboxToggleController.deliveryAgent
                                            ? true
                                            : false,
                                        onChanged: null);
                                  },
                                )),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: DeviceUtils.getScaledWidth(context,
                                    scale: 0.03),
                              ),
                              Container(
                                height: 56,
                                width: 56,
                                decoration: BoxDecoration(
                                    color: AppColors.color1,
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              SizedBox(
                                width: DeviceUtils.getScaledWidth(context,
                                    scale: 0.03),
                              ),
                              Text(
                                Strings.deliveryAgent,
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 20,
                                  fontFamily: FontFamily.sofiaSemiBold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                  ),
                  GestureDetector(
                    onTap: () {
                      accountCreationController.setAccountType(Strings.shippingAgent);
                      checkboxToggleController.updateCheckbox(Strings.shippingAgent);

                    },
                    child: Container(
                      height: 100,
                      width: 312,
                      margin: EdgeInsets.only(left: 32, right: 32),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.appPrimaryColor,
                          border: Border.all(width: 1, color: AppColors.color5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 11.0, top: 11),
                            child:  Align(
                                alignment: Alignment.topRight,
                                child:  GetBuilder<CheckboxToggleController>(
                                  init: checkboxToggleController,
                                  builder: (_) {
                                    return CircleCheckbox(
                                        value: checkboxToggleController.shippingAgent
                                            ? true
                                            : false,
                                        onChanged: null);
                                  },
                                )
                            )),
                          Row(
                            children: [
                              SizedBox(
                                width: DeviceUtils.getScaledWidth(context,
                                    scale: 0.03),
                              ),
                              Container(
                                height: 56,
                                width: 56,
                                decoration: BoxDecoration(
                                    color: AppColors.color1,
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              SizedBox(
                                width: DeviceUtils.getScaledWidth(context,
                                    scale: 0.03),
                              ),
                              Text(
                                Strings.shippingAgent,
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 20,
                                  fontFamily: FontFamily.sofiaSemiBold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
  // void changeAccountType(String value) {}
}
