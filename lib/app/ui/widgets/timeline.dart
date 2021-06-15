
import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Timeline extends StatelessWidget {
  bool isFirst;
  bool isLast;
  IconData icon;
  Color color;
  String text;
  bool isFilled;

  Timeline({this.isFirst, this.isLast, this.color, this.icon, this.text, this.isFilled});
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: TimelineTile(
        axis: TimelineAxis.horizontal,
        alignment: TimelineAlign.manual,
        lineXY: 0.4 ,
        isFirst: isFirst,
        isLast: isLast,
        indicatorStyle: IndicatorStyle(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(0),
          indicator: Container(
            decoration: BoxDecoration(
                color: (isFilled) ? AppColors.appPrimaryColor : AppColors.whiteColor,
                border: Border.all(color: color, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(100))
            ),
            child: Icon(icon, color: (isFilled) ? AppColors.whiteColor : color,),
          ),

        ),
        beforeLineStyle: LineStyle(
            thickness: 2,
            color: AppColors.color13
        ),
        endChild: Text(text,
          style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              fontFamily: FontFamily.sofiaBold),),
      ),
    );
  }
}
