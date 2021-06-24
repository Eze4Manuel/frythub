
import 'package:fryghthub/app/controller/checkbox_toggle_controller.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/instance_manager.dart';


class CheckBoxToggleBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckboxToggleController>(() => CheckboxToggleController());
  }

}