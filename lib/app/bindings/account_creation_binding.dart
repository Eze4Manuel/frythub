
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/instance_manager.dart';
import '../controller/account_creation_controller.dart';


class AccountCreationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountCreationController>(() => AccountCreationController());
  }

}