import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GoogleDeliveryController extends GetxController {

  DateTime _preferredPickupDate;
  TextEditingController textDateController = new TextEditingController();

  void setPreferredPickupDate(value){
    textDateController.text = value.toString();

    _preferredPickupDate = value;
    print(_preferredPickupDate);
  }

}
