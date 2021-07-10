import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GooglePickupController extends GetxController {

  DateTime preferredPickupDate;
  TextEditingController textDateController = new TextEditingController();

  void setPreferredPickupDate(value){
    textDateController.text = value.toString();

    preferredPickupDate = value;
    print(preferredPickupDate);
  }
}
