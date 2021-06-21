

import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/components/icon_container.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/widgets/custom_checkbox.dart';
import 'package:fryghthub/app/utils/device_utils.dart';

class ShippingMethodSelectComponent extends StatelessWidget {
  String topText;
  String bottomText;
  bool isSelected;

  ShippingMethodSelectComponent({this.topText, this.bottomText, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.whiteColor,
          border: Border.all(
              width: 1, color: (isSelected) ? AppColors.appPrimaryColor : AppColors.color13)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
              padding:
              const EdgeInsets.only(right: 11.0, top: 11),
              child: Align(
                  alignment: Alignment.topRight,
                  child: CircleCheckbox(
                      value: isSelected ? true : false,
                      activeColor: (isSelected) ? AppColors.appPrimaryColor : AppColors.color13,
                      checkColor: (isSelected) ? AppColors.appPrimaryColor : AppColors.color13,
                      onChanged: null))),
          Row(
            children: [
              IconContainerComponent(context: context, height: 40.0, width: 40.0, isActive: isSelected),
              SizedBox(
                width: DeviceUtils.getScaledWidth(context,
                    scale: 0.03),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    topText,
                    style: TextStyle(
                      color: AppColors.color10,
                      fontSize: 16,
                      fontFamily: FontFamily.sofiaSemiBold,
                    ),
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context,
                        scale: 0.01),
                  ),
                  Text(
                    bottomText,
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
    );
  }
}
