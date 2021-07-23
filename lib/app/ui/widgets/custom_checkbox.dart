import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';

class CircleCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  final Color checkColor;
  final bool tristate;
  final MaterialTapTargetSize materialTapTargetSize;

  CircleCheckbox({
    Key key,
    @required this.value,
    this.tristate = false,
    @required this.onChanged,
    this.activeColor,
    this.checkColor,
    this.materialTapTargetSize,
  })  : assert(tristate != null),
        assert(tristate || value != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox(
        width: Checkbox.width,
        height: Checkbox.width,
        child: Container(
          decoration: new BoxDecoration(
            border: Border.all(
                width: 2,
                color: AppColors.whiteColor),
            color: AppColors .whiteColor,
            borderRadius: new BorderRadius.circular(100),
          ),
          child: Checkbox(
            value: value,
            tristate: tristate,
            onChanged: onChanged,
            hoverColor: AppColors.whiteColor,
            overlayColor: MaterialStateColor.resolveWith((states) => AppColors.whiteColor),
            activeColor: AppColors.whiteColor,
            checkColor: AppColors.appPrimaryColor,
            fillColor: MaterialStateColor.resolveWith((states) => AppColors.whiteColor),
            // materialTapTargetSize: materialTapTargetSize,
          ),
        ),
      ),
    );
  }
}