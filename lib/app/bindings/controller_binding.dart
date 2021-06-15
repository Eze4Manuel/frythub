
import 'package:fryghthub/app/controller/account_sigin_controller.dart';
import 'package:fryghthub/app/controller/buy_a_car_timeline_controller.dart';
import 'package:fryghthub/app/controller/checkbox_toggle_controller.dart';
import 'package:fryghthub/app/controller/forgot_password_controller.dart';
import 'package:fryghthub/app/controller/reset_password_controller.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/instance_manager.dart';
import '../controller/account_creation_controller.dart';


class ControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountCreationController>(() => AccountCreationController());
    Get.lazyPut<AccountSigninController>(() => AccountSigninController());
    Get.lazyPut<ForgotPasswordController>(() => ForgotPasswordController());
    Get.lazyPut<ResetPasswordController>(() => ResetPasswordController());
    Get.lazyPut<CheckboxToggleController>(() => CheckboxToggleController());
    Get.lazyPut<BuyACarTimelineController>(() => BuyACarTimelineController());
  }

}