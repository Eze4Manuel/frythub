
import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';

InputDecoration textInputDecoration = InputDecoration(
  hintStyle: TextStyle(
      color: AppColors.color12,
      fontFamily: FontFamily.sofiaRegular,
      fontWeight: FontWeight.normal),
  contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.color12, width: 1.0),
    borderRadius: BorderRadius.circular(8),
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.color12, width: 2.0),
    borderRadius: BorderRadius.circular(8),
  ),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.color4, width: 3.0),
      borderRadius: BorderRadius.circular(8),
      gapPadding: 8.0),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.color7, width: 2.0),
    borderRadius: BorderRadius.circular(8),
  ),
);
