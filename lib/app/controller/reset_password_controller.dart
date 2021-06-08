

import 'package:fryghthub/app/data/model/account.dart';

class ResetPasswordController {

  String code;
  String password;

  // sets the email of account to be logged in
  void setCode(String code) => code = code;
  void setPassword(String password) => password = password;

  Future<bool> resetCode(){
    // TODO Inplement the procedure to upload user account

    print(code);
    return Future<bool>.value(true);
  }

  // Removes Object instance
  void removeAccountReference (){
    code = null;
    password = null;
  }
}
