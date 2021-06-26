  import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CarInformationController extends GetxController {

  final List<String> carManufacturer = ["Toyota", "Honda", "Ford"];
  final List<String> carModel = ['Corolla', 'Bitrex', 'Ford'];
  final List<String> manufacturerYear = ['2020', '2021', '2022'];
  final List<String> selectColor = ['Red', 'Black', 'White'];

  String _currentCarManufacturer;
  String _currentCarModel;
  String _currentManufacturerYear;
  int minMilliage;
  int maxMilliage;
  String _currentColor;
  RxInt transmissionType = 0.obs;
  RxInt sedanNumber = 1.obs;
  RxString shippingMethod = 'No Shipping Method'.obs;
  TextEditingController textController = new TextEditingController();

  void  setCurrentCarManufacturer(value){
    _currentCarManufacturer = value;
    print(_currentCarManufacturer);
  }
  void setCurrentCarModel(value){
    _currentCarModel = value;
    print(_currentCarModel);
  }
  void setManufacturerYear(value){
    _currentManufacturerYear = value;
    print(_currentManufacturerYear);
  }
  void setMinMilliage(value){
    minMilliage = value;
    print(minMilliage);
  }
  void setMaxMilliage(value){
    maxMilliage = value;
    print(maxMilliage);
  }
  void setCurrentColor(value){
    _currentColor = value;
    print(_currentColor);
  }
  void setTransmissionType(val){
    transmissionType.value = val;
    print(transmissionType);
  }

  void setShippingMethod(val){
    textController.text = val;
    shippingMethod.value = val;
    print(shippingMethod);
  }

  void increment(){
    sedanNumber++;
  }

  void decrement(){
    if(sedanNumber != 1) sedanNumber--;
  }
}
