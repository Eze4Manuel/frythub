

import 'package:fryghthub/app/data/model/account.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AccountCreationController extends GetxController{

   Account account = Account();

   // Gets email of account
   String getEmail() => ( account.email );

   // sets the type of account to be created
   void setAccountType(String accountType) =>  account.accountType = accountType;
   void setFirstName(String firstName) => account.firstName = firstName;
   void setLastName(String lastName) => account.firstName = lastName;
   void setEmail(String email) => account.email = email;
   void setUserName(String userName) => account.username = userName;
   void setPhone(String phone) => account.phone = phone;
   void setPassword(String password) => account.password = password;


   // Returns true if user is signed in
   Future<bool> createNewAccount() async {
      switch(account.accountType){
         case 'Buying Agent':
            {

            }
            break;
         case 'Shipping Agent':
            {

            }
            break;
         case 'Delivery Agent':
            {

            }
            break;
         case 'I want to Buy/Ship':
            {

            }
            break;
         case 'Buying Agent:Delivery Agent':
            {

            }
            break;

      }

      return Future<bool>.value(true);
   }

  // Removes Object instance
   void removeAccountReference () => account = null;
}
