
import 'package:fryghthub/app/controller/account_signin_controller.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/instance_manager.dart';


class AccountSiginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountSigninController>(() => AccountSigninController());
  }

}