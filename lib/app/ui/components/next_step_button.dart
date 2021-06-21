
import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';

class NextStepButtonComponent extends StatelessWidget {
  String text;
  NextStepButtonComponent({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.appPrimaryColor),
      margin: EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(),
          Center(
            child: Text(
              Strings.nextstep,
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 20,
                fontFamily: FontFamily.sofiaSemiBold,
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 20,
              fontFamily: FontFamily.sofiaSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
