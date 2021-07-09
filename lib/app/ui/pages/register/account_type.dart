import 'package:flutter/material.dart';
import 'package:fryghthub/app/controller/account_creation_controller.dart';
import 'package:fryghthub/app/controller/checkbox_toggle_controller.dart';
import 'package:fryghthub/app/ui/pages/register/create_account.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/ui/widgets/custom_checkbox.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';
import 'package:get/get.dart';

import '../../../controller/account_creation_controller.dart';

class AccountType extends StatefulWidget {
  @override
  _AccountTypeState createState() => _AccountTypeState();
}

class _AccountTypeState extends State<AccountType> {
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
        return ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 32),
              child: Text(
                Strings.howdy,
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
              margin: EdgeInsets.only(left: 32),
              child: Text(
                Strings.selectAccount,
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
                          width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
                        ),
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                              color: AppColors.color1,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        SizedBox(
                          width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
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
              height: DeviceUtils.getScaledHeight(context, scale: 0.02),
            ),
            GestureDetector(
              onTap: () {
                if(checkboxToggleController.deliveryAgent){
                  accountCreationController
                      .setAccountType('${Strings.buyingAgent}:${Strings.deliveryAgent}');
                  checkboxToggleController
                      .updateCheckbox('${Strings.buyingAgent}:${Strings.deliveryAgent}');
                }
                else {
                  accountCreationController
                      .setAccountType(Strings.buyingAgent);
                  checkboxToggleController
                      .updateCheckbox(Strings.buyingAgent);
                }
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
                            ))),
                    Row(
                      children: [
                        SizedBox(
                          width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
                        ),
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                              color: AppColors.color1,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        SizedBox(
                          width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
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
              height: DeviceUtils.getScaledHeight(context, scale: 0.02),
            ),
            GestureDetector(
              onTap: () {
                if(checkboxToggleController.buyingAgent){
                        accountCreationController
                            .setAccountType('${Strings.buyingAgent}:${Strings.deliveryAgent}');
                        checkboxToggleController
                            .updateCheckbox('${Strings.buyingAgent}:${Strings.deliveryAgent}');
                      }
                    else {
                        accountCreationController
                            .setAccountType(Strings.deliveryAgent);
                        checkboxToggleController
                            .updateCheckbox(Strings.deliveryAgent);
                      }
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
                          width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
                        ),
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                              color: AppColors.color1,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        SizedBox(
                          width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
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
              height: DeviceUtils.getScaledHeight(context, scale: 0.02),
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
                        child: Align(
                            alignment: Alignment.topRight,
                            child: GetBuilder<CheckboxToggleController>(
                              init: checkboxToggleController,
                              builder: (_) {
                                return CircleCheckbox(
                                    value:
                                        checkboxToggleController.shippingAgent
                                            ? true
                                            : false,
                                    onChanged: null);
                              },
                            ))),
                    Row(
                      children: [
                        SizedBox(
                          width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
                        ),
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                              color: AppColors.color1,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        SizedBox(
                          width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
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
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.05),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateAccount()));
              },
              child: Container(
                height: 56,
                // width: 311,
                margin: EdgeInsets.only(left: 32, right: 32, bottom: 32),
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
          ],
        );
      }),
    );
  }
}
