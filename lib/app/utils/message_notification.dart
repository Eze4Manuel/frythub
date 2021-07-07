import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:toast/toast.dart';

class MessageNotification  {
   static messageToast(message, context, color){
    Toast.show(message, context, backgroundColor: color, textColor: AppColors.whiteColor, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
  }


}
