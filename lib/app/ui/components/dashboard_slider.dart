

import 'package:flutter/cupertino.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';

class DashBoardSliderComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 60,
      decoration: BoxDecoration(
          color: AppColors.color1,
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
