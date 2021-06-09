

import 'package:fryghthub/app/data/model/account.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {

  String email;

  // sets the email of account to be logged in
  void setEmail(String email) => email = email;

  Future<bool> verifyEmail(){
    // TODO Inplement the procedure to upload user account

    print(email);
    return Future<bool>.value(true);
  }

  // Removes Object instance
  void removeAccountReference () => (email != null) ? email = null : null;
}
