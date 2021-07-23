import 'dart:convert';

import 'package:fryghthub/app/data/model/account.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:http/http.dart' as http;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import 'base_controller.dart';

class AccountSigninController extends BaseController {

  Account account = Account();
  String signInUrl = '${Strings.domain}api/User/signin';
  String signInWithGoogleUrl = '${Strings.domain}api/User/signin_with_google';
  String signInWithFacebookUrl = '${Strings.domain}api/User/signin_with_facebook';
  RxBool loading = false.obs;
  static const List user_keys = ['email','token','tokenExpiry'];
  dynamic data;
  GoogleSignIn _googleSignIn = GoogleSignIn();



  // sets the email of account to be logged in
  void setEmail(String email) => account.email = email.trim();

  // sets password
  void setPassword(String password) => account.password = password;

  // updates loading bar
  void setLoading(bool val) => loading.value = val;




  //------------ Account Sign-In ------------//
  Future<bool> signInAccount() async {
    var url = Uri.parse(signInUrl);
    print(url);
    data = {
      "authenticateDto": {
        "username": account.email,
        "password": account.password
      }
    };
    try {
      var response =
      await http.post(
          url,
          headers: {"Accept": "*/*", "Content-Type": "application/json"},
          body: jsonEncode(data));
      print('Response status: ${response.statusCode}');
      print('Response body: ${jsonDecode(response.body)}');

      if(jsonDecode(response.body)['isSuccess']){
        setMessage(jsonDecode(response.body)['message']);

        // Storing the data to local storage
        if(await storeUserDetails(jsonDecode(response.body), user_keys)){
          return Future<bool>.value(true);
        }
      }else{
        setMessage(jsonDecode(response.body)['message']);
        return Future<bool>.value(false);
      }
    }catch(error){
      print(error);
      setMessage("Something went wrong");
      return Future<bool>.value(false);
    }
    return false;
  }


  //------------ Signing in with Google ------------//
  Future<bool> signInWithGoogle() async {
    var url = Uri.parse(signInWithGoogleUrl);
    print(url);
    GoogleSignInAccount res = await _googleSignIn.signIn();
    if(res != null) {
      await res.authentication.then((value) =>
      {
        print(value.accessToken),
        data = {
          "accessToken": value.accessToken
        },
      });
      print(data);

      // Sending parameters to http request. Implemented in base controller
      return await sendHttpRequest(url, data );
    }else {
      setMessage('An error occurred');
      return Future<bool>.value(false);
    }
  }

  //------------ Signing Out of Google ---------------//
  void signOutWithGoogle () async => await _googleSignIn.signOut().then((value) => print(value));

  //------------ Signin with Facebook ------------//
  Future<bool> signInWithFaceBook () async {
    var url = Uri.parse(signInWithFacebookUrl);
    print(url);
    final LoginResult result = await FacebookAuth.instance.login();
    if (result.status == LoginStatus.success) {
      // you are logged
      final AccessToken accessToken = result.accessToken;
      var packet = accessToken.toJson();
      data = {
        "accessToken": packet['token']
      };
      print(packet['token']);

      // Sending parameters to http request. Implemented in base controller
      return await sendHttpRequest(url, data );
    }else{
      print(result.message);
      print(result.status);
      setMessage("Cannot log in");
      return Future<bool>.value(false);
    }
  }

  //------------ Signing out of Facebook ------------//
  void signOutOfFaceBook () async =>
     await FacebookAuth.instance.logOut().then((value) => print('Logged Out'));

  //------------ Removes Object instance ------------//
  void removeAccountReference() => (account != null) ? account = null : null;

}


