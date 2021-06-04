
import 'package:get/get.dart';

import '../controller/account_creation.dart';


class ControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountCreation>(() => AccountCreation());
  }

}