

import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ResetPasswordController extends GetxController {

  String code;
  String password;

  // sets the email of account to be logged in
  void setCode(String code) => code = code;
  void setPassword(String password) => password = password;

  Future<bool> resetCode(){
    // TODO Inplement the procedure to Reset Code

    print(code);
    return Future<bool>.value(true);
  }

  // Removes Object instance
  void removeAccountReference (){
    code = null;
    password = null;
  }
}
