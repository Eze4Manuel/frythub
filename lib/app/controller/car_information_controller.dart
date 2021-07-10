  import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CarInformationController extends GetxController {
  
  final List<String> carManufacturer = ["Toyota", "Honda", "Ford"];
  final List<String> carModel = ['Corolla', 'Bitrex', 'Ford'];
  final List<String> manufacturerYear = ['2020', '2021', '2022'];
  final List<String> selectColor = ['Red', 'Black', 'White'];

  String currentCarManufacturer;
  String currentCarModel;
  String currentManufacturerYear;
  int minMilliage = 0;
  int maxMilliage = 0;
  String currentColor;
  RxInt transmissionType = 0.obs;
  RxInt sedanNumber = 1.obs;
  RxString shippingMethod = 'No Shipping Method'.obs;
  TextEditingController textController = new TextEditingController();

  void  setCurrentCarManufacturer(value){
    currentCarManufacturer = value;
    print(currentCarManufacturer);
  }
  void setCurrentCarModel(value){
    currentCarModel = value;
    print(currentCarModel);
  }
  void setManufacturerYear(value){
    currentManufacturerYear = value;
    print(currentManufacturerYear);
  }
  void setMinMilliage(value){
    minMilliage = int.parse(value);
    print(minMilliage);
  }
  void setMaxMilliage(value){
    maxMilliage = int.parse(value);
    print(maxMilliage);
  }
  void setCurrentColor(value){
    currentColor = value;
    print(currentColor);
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


  void resetVariables (){
    currentCarManufacturer = '';
    currentCarModel = '';
    currentManufacturerYear = '';
    minMilliage = 0;
    maxMilliage = 0;
    currentColor = '';
    transmissionType = 0.obs;
    sedanNumber = 1.obs;
    shippingMethod = 'No Shipping Method'.obs;
    textController.text =  '';
  }
}
