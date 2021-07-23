import 'dart:convert';

import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fryghthub/app/controller/base_controller.dart';
import 'package:fryghthub/app/data/model/account.dart';
import 'package:fryghthub/app/data/model/child-accounts/user.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class AccountCreationController extends BaseController{

   Account account = Account();
   dynamic data;
   var url;
   String signUpWithGoogleUrl = '${Strings.domain}api/User/signup_with_google';
   String signUpWithFacebookUrl = '${Strings.domain}api/User/signup_with_facebook';
   String checkUserNameUrl = '${Strings.domain}api/User/username_availability';

   GoogleSignIn _googleSignIn = GoogleSignIn();

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
   void setLoading(bool val) => loading.value = val;


   // Returns true if user account is created successfully. False if otherwise
   Future<bool> createNewAccount() async {
      switch(account.accountType){
         case 'Buying Agent':
            {
               data = {
                  "firstName": account.firstName,
                  "username": account.username,
                  "lastName": account.lastName,
                  "email": account.email,
                  "address": account.username ?? '',
                  "phone": account.phone,
                  "password": account.password,
                  "yearsOfExperience": 0,
                  "type": 1,
                  "deviceToken": "",
                  "latitude": 0,
                  "longitude": 0
               };
               return await createUserAccount(account, '${Strings.domain}api/Agent/register', data );
            }
            break;
         case 'Shipping Agent':
            {
               data = {
                  "firstName": account.firstName,
                  "username": account.username,
                  "lastName": account.lastName,
                  "email": account.email,
                  "address": account.username ?? '',
                  "phone": account.phone,
                  "password": account.password,
                  "businessName": "",
                  "establishmentDate": "",
                  "deviceToken": "",
                  "latitude": 0,
                  "longitude": 0
               };
               return await createUserAccount(account, '${Strings.domain}api/ShippingAgent/register', data );
            }
            break;
         case 'Delivery Agent':
            {
               data = {
                  "firstName": account.firstName,
                  "username": account.username,
                  "lastName": account.lastName,
                  "email": account.email,
                  "address": account.username ?? '',
                  "phone": account.phone,
                  "password": account.password,
                  "yearsOfExperience": 0,
                  "type": 2,
                  "deviceToken": "",
                  "latitude": 0,
                  "longitude": 0
               };
               return await createUserAccount(account, '${Strings.domain}api/Agent/register', data );
            }
            break;
         case 'I want to Buy/Ship':
            {
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
               return await createUserAccount(account, '${Strings.domain}api/User/signup', data );
            }
            break;
         case 'Buying Agent:Delivery Agent':
            {
               data = {
                  "firstName": account.firstName,
                  "username": account.username,
                  "lastName": account.lastName,
                  "email": account.email,
                  "address": account.username ?? '',
                  "phone": account.phone,
                  "password": account.password,
                  "yearsOfExperience": 0,
                  "type": 3,
                  "deviceToken": "string",
                  "latitude": 0,
                  "longitude": 0
               };
               return await createUserAccount(account, '${Strings.domain}api/Agent/register', data );
            }
            break;
      }
      return  Future<bool>.value(false);
    }


   Future<bool> createUserAccount(account, accountCreationUrl, data) async {
       url = Uri.parse(accountCreationUrl);
       print(data);

       // Sending parameters to http request. Implemented in base controller
       return await sendHttpRequest(url, data );
       }


   Future<bool> checkUserName() async {
      var url = Uri.parse(checkUserNameUrl);
      print(url);
      data = {
         "username": account.username
      };
      print(data);
      // Sending parameters to http request. Implemented in base controller
      return await sendHttpRequest(url, data );
   }


   // Signing up with Google
   Future<bool> signUpWithGoogle() async {
      url = Uri.parse(signUpWithGoogleUrl);
      print(url);
      GoogleSignInAccount res = await _googleSignIn.signIn();
      if(res != null) {
         await res.authentication.then((value) => {
            print(value.accessToken),
            data = {
               "accessToken": value.accessToken
            },
         print(data)
         }).catchError((e){
             setMessage('Token Fetch error');
            // ignore: invalid_return_type_for_catch_error
            return Future<bool>.value(false);
          });

         // Sending parameters to http request. Implemented in base controller
         return await sendHttpRequest(url, data );

      } else {
         setMessage('An error occurred');
         return Future<bool>.value(false);
      }
   }

   // Sign-in with Facebook
   Future<bool> signUpWithFaceBook () async {
      var url = Uri.parse(signUpWithFacebookUrl);
      print(url);
      final LoginResult result = await FacebookAuth.instance.login();
      if (result.status == LoginStatus.success) {
         final AccessToken accessToken = result.accessToken;
         var packet = accessToken.toJson();
         data = {
            "accessToken": packet['token']
         };
         print(packet['token']);

         // Sending parameters to http request. Implemented in base controller
         return await sendHttpRequest(url, data );

      }else {
         print(result.message);
         print(result.status);
         setMessage("Login Failed");
         return Future<bool>.value(false);
      }
   }

  // Removes Object instance
   void removeAccountReference () => account = null;
}
