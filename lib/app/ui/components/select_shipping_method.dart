import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/components/pull_up.dart';
import 'package:fryghthub/app/ui/components/shipping_method_select.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class ShippingMethod extends StatelessWidget {
  final controller;
  final BuildContext context;
  ShippingMethod({this.context, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.02),
          ),
          PullUpComponent(),
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
              onTap: () {
                controller.setShippingMethod('Container');
              },
              child: Obx(
                    () => ShippingMethodSelectComponent(
                    topText: Strings.container,
                    bottomText: Strings.orderWithLess,
                    isSelected:
                    (controller.shippingMethod.value ==
                        'Container')
                        ? true
                        : false),
              )),
          // Roll on Roll off  Select
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.02),
          ),
          GestureDetector(
              onTap: () {
                controller
                    .setShippingMethod('Roll-On-Roll-Off');
              },
              child: Obx(
                    () => ShippingMethodSelectComponent(
                    topText: Strings.rollOnRollOff,
                    bottomText: Strings.orderWithMore,
                    isSelected:
                    (controller.shippingMethod.value ==
                        'Roll-On-Roll-Off')
                        ? true
                        : false),
              )),
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
  }
}


