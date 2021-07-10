import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GoogleDeliveryController extends GetxController {

  DateTime preferredDeliveryDate;
  TextEditingController textDateController = new TextEditingController();

  void setPreferredDeliveryDate(value){
    textDateController.text = value.toString();

    preferredDeliveryDate = value;
    print(preferredDeliveryDate);
  }

}
