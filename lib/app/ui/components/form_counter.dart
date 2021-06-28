import 'package:flutter/material.dart';
import 'package:fryghthub/app/controller/car_information_controller.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class FormCounter extends StatelessWidget {
  var controller;

  FormCounter({this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                controller.decrement();
              },
              child: Container(
                height: DeviceUtils.getScaledHeight(context, scale: 0.06),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      //                   <--- left side
                      color: AppColors.color12,
                      width: 1.0,
                    ),
                    bottom: BorderSide(
                      //                    <--- top side
                      color: AppColors.color12,
                      width: 1.0,
                    ),
                    right: BorderSide(
                      //                    <--- top side
                      color: AppColors.color12,
                      width: 1.0,
                    ),
                    top: BorderSide(
                      //                    <--- top side
                      color: AppColors.color12,
                      width: 1.0,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6.0),
                      bottomLeft: Radius.circular(6.0)),
                ),
                child: Center(
                    child: Text(
                  '-',
                  style: TextStyle(
                      color: AppColors.appColor1,
                      fontWeight: FontWeight.normal,
                      fontSize: 26.0,
                      fontFamily: FontFamily.sofiaRegular),
                )),
              ),
            )),
        Expanded(
            flex: 3,
            child: Container(
                height: DeviceUtils.getScaledHeight(context, scale: 0.06),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      //                    <--- top side
                      color: AppColors.color12,
                      width: 1.0,
                    ),
                    top: BorderSide(
                      //                    <--- top side
                      color: AppColors.color12,
                      width: 1.0,
                    ),
                  ),
                ),
                child: Center(
                  child: Obx(() => Text(
                        '${controller.sedanNumber.value}',
                        style: TextStyle(
                            color: AppColors.appColor1,
                            fontWeight: FontWeight.normal,
                            fontSize: 20.0,
                            fontFamily: FontFamily.sofiaRegular),
                      )),
                ))),
        Flexible(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              controller.increment();
            },
            child: Container(
              height: DeviceUtils.getScaledHeight(context, scale: 0.06),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    //                   <--- left side
                    color: AppColors.color12,
                    width: 1.0,
                  ),
                  bottom: BorderSide(
                    //                    <--- top side
                    color: AppColors.color12,
                    width: 1.0,
                  ),
                  right: BorderSide(
                    //                    <--- top side
                    color: AppColors.color12,
                    width: 1.0,
                  ),
                  top: BorderSide(
                    //                    <--- top side
                    color: AppColors.color12,
                    width: 1.0,
                  ),
                ),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6.0),
                    bottomRight: Radius.circular(6.0)),
              ),
              child: Center(
                  child: Text(
                '+',
                style: TextStyle(
                    color: AppColors.appColor1,
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0,
                    fontFamily: FontFamily.sofiaBold),
              )),
            ),
          ),
        )
      ],
    );
  }
}
