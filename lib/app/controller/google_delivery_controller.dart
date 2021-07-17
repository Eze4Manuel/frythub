import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleDeliveryController extends GetxController {

  DateTime preferredDeliveryDate;
  TextEditingController textDateController = new TextEditingController();

  GoogleMapController myMapController;
  final Set<Marker> markers = new Set();
  LatLng mainLocation = const LatLng(9.05785, 7.49508);

  void setPreferredDeliveryDate(value){
    textDateController.text = value.toString();

    preferredDeliveryDate = value;
    print(preferredDeliveryDate);
  }

}
