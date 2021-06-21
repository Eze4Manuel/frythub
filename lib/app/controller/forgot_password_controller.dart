


import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ForgotPasswordController extends GetxController {

  String email;

  // sets the email of account to be logged in
  void setEmail(String email) => email = email;

  Future<bool> verifyEmail(){
    // TODO Inplement the procedure to verify Email
    return Future<bool>.value(true);
  }
  // Removes Object instance
  void removeAccountReference () => (email != null) ? email = null : null;
}
