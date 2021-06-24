
import 'package:fryghthub/app/controller/car_information_controller.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/instance_manager.dart';

class CarInformationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CarInformationController>(() => CarInformationController());
  }

}