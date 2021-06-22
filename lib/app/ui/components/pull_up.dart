
import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';

class PullUpComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10),
        width: 60,
        height: 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: AppColors.color13,
        ),
      ),
    );
  }
}
