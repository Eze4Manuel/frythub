

import 'package:fryghthub/app/data/model/account.dart';

class AccountSigninController {

  Account account = Account();

  // sets the email of account to be logged in
  void setEmail(String email) => account.email = email;
  void setPassword(String password) => account.password = password;

  Future<bool> signInAccount(){
    // TODO Inplement the procedure to upload user account

    print(account.toString());
    return Future<bool>.value(true);
  }

  // Removes Object instance
  void removeAccountReference () => (account != null) ? account = null : null;
}
