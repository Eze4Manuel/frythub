import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PickUpAddressController extends GetxController {

  final List<String> selectCountry = ["Toyota", "Honda", "Ford"];
  final List<String> selectState = ['Corolla', 'Bitrex', 'Ford'];

  String _selectCountry;
  String _selectState;
  String _streetName;
  String _houseNumber;
  String _postalCode;
  String _preferredPickupDate;

  void  setSelectCountry(value){
    _selectCountry = value;
    print(_selectCountry);
  }

  void  setSelectState(value){
    _selectState = value;
    print(_selectState);
  }
  void  setStreetName(value){
    _streetName = value;
    print(_streetName);
  }
  void setHouseNumber(value){
    _houseNumber = value;
    print(_houseNumber);
  }
  void setPostalCode(value){
    _postalCode = value;
    print(_postalCode);
  }
  void setPreferredPickupDate(value){
    _preferredPickupDate = value;
    print(_preferredPickupDate);
  }
}
