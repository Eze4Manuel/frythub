import 'dart:convert';

import 'package:fryghthub/app/controller/base_controller.dart';
import 'package:fryghthub/app/data/model/account.dart';
import 'package:fryghthub/app/data/model/child-accounts/user.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

class AccountCreationController extends BaseController{

   Account account = Account();
   dynamic data;

   // Gets email of account
   String getEmail() => ( account.email );
   RxBool loading = false.obs;

   // sets the type of account to be created
   void setAccountType(String accountType) =>  account.accountType = accountType;
   void setFirstName(String firstName) => account.firstName = firstName;
   void setLastName(String lastName) => account.lastName = lastName;
   void setEmail(String email) => account.email = email;
   void setUserName(String userName) => account.username = userName;
   void setPhone(String phone) => account.phone = phone;
   void setPassword(String password) => account.password = password;

   void setLoading(bool val) {
      loading.value = val;
   }

   // Returns true if user account is created successfully. False if otherwise
   Future<bool> createNewAccount() async {
      switch(account.accountType){
         case 'Buying Agent':
            {
               Future<bool>.value(false);            }
            break;
         case 'Shipping Agent':
            {
               Future<bool>.value(false);            }
            break;
         case 'Delivery Agent':
            {
               Future<bool>.value(false);            }
            break;
         case 'I want to Buy/Ship':
               return createUserAccount(account);
            break;
         case 'Buying Agent:Delivery Agent':
            {
               Future<bool>.value(false);            }
            break;
      }
    }


    Future<bool> createUserAccount(account) async {
       String accountCreationUrl = '${Strings.domain}api/User/signup';
       var url = Uri.parse(accountCreationUrl);
       print(account.firstName);
       data = {
          "registerDto": {
             "firstName": account.firstName,
             "lastName": account.lastName,
             "email": account.email,
             "address": account.username ?? '',
             "phone": account.phone,
             "password": account.password
          }
       };
       print(data);

       try {
          var response =
              await http.post(
              url,
              headers: {"Accept": "*/*", "Content-Type": "application/json"},
              body: jsonEncode(data));
          print('Response status: ${response.statusCode}');
          print('Response body: ${jsonDecode(response.body)}');

          if(jsonDecode(response.body)['isSuccess']){
             setMessage("Registration Success");
             return Future<bool>.value(true);
             }else{
             setMessage(jsonDecode(response.body)['message']);
             return Future<bool>.value(false);
             }
             }catch(e){
             print(e);
             setMessage("Something went wrong");
             return Future<bool>.value(false);
             }
       }

  // Removes Object instance
   void removeAccountReference () => account = null;
}
