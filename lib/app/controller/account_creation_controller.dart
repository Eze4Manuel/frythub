

import 'package:fryghthub/app/data/model/account.dart';

class AccountCreationController {

   Account account = Account();

  // sets the type of account to be created
   void setAccountType(String accountType) =>  account.account_type = accountType;
   void setFirstName(String firstName) => account.firstName = firstName;
   void setLastName(String lastName) => account.firstName = lastName;
   void setEmail(String email) => account.email = email;
   void setUserName(String userName) => account.username = userName;
   void setPhone(String phone) => account.phone = phone;
   void setPassword(String password) => account.password = password;


   // Returns true if user is signed in
   Future<bool> createNewAccount(){
   // TODO Inplement the procedure to upload user account

      print(account.toString());
      return Future<bool>.value(true);
   }

  // Removes Object instance
   void removeAccountReference () => account = null;
}
