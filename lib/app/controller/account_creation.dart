

import 'package:fryghthub/app/data/model/account.dart';

class AccountCreation {

  static Account account = Account();

  // sets the type of account to be created
  static void setAccountType(String accountType){
    account.account_type = accountType;
  }

  // Removes Object instance
  static void removeAccountReference () => account = null;
}