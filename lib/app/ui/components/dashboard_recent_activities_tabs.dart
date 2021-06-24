
import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/components/icon_container.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/utils/device_utils.dart';

class RecentActivitiesComponent extends StatelessWidget {
  String textTop;
  String textBottom;

  RecentActivitiesComponent({this.textTop, this.textBottom});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconContainerComponent(context: context, height: 30.0, width: 30.0, isActive: true,),
        SizedBox(
          width: DeviceUtils.getScaledHeight(context,
              scale: 0.005),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Text(
              textTop,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: AppColors.appColor1,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  fontFamily: FontFamily.sofiaBold),
            ),
            Text(
              textBottom,
              style: TextStyle(
                  color: AppColors.color3,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0,
                  fontFamily: FontFamily.sofiaRegular),
            )
          ],
        )
      ],
    );
  }
}
