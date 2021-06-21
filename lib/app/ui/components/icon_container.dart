

import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/utils/device_utils.dart';

class IconContainerComponent extends StatelessWidget {
  BuildContext context;
  double height;
  double width;
  bool isActive;

  IconContainerComponent({this.context, this.height, this.width, this.isActive});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: DeviceUtils.getScaledWidth(
              context,
              scale: 0.01),
        ),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: (isActive) ? AppColors.color1 : AppColors.color13,
              borderRadius:
              BorderRadius.circular(8)),
        ),
        SizedBox(
          width: DeviceUtils.getScaledWidth(
              context,
              scale: 0.01),
        ),
      ],
    );
  }
}