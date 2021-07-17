import 'dart:convert';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:fryghthub/app/data/model/account.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/utils/shared_prefs.dart';
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

  Future<bool> signInWithGoogle() async {
    var url = Uri.parse(signInWithGoogleUrl);
    print(url);

    try{
      GoogleSignInAccount res = await _googleSignIn.signIn();
      if(res != null){
        await res.authentication.then((value) => {
          print(value.accessToken),
          data = {
            "accessToken": value.accessToken
          },
        });
        print(data);
        var response =
        await http.post(
            url,
            headers: {"Accept": "*/*", "Content-Type": "application/json"},
            body: jsonEncode(data));
        print('Response status: ${response.statusCode}');
        print('Response body: ${jsonDecode(response.body)}');

         if(jsonDecode(response.body)['isSuccess']){
          setMessage("Sign In success");
          return Future<bool>.value(true);

         }else{
          setMessage(jsonDecode(response.body)['message']);
          return Future<bool>.value(false);
        }
      } else {
        setMessage('An error occurred');
        return Future<bool>.value(false);
      }
    }catch(err){
      print(err);
      setMessage("Something went wrong");
      return Future<bool>.value(false);
    }
  }


  Future<bool> signInWithFaceBook () async {
    var url = Uri.parse(signInWithFacebookUrl);
    print(url);

    try{
      final LoginResult result = await FacebookAuth.instance.login();
      if (result.status == LoginStatus.success) {
        // you are logged
        final AccessToken accessToken = result.accessToken;
        var packet = accessToken.toJson();
        data = {
          "accessToken": packet['token']
        };
        var response =
        await http.post(
            url,
            headers: {"Accept": "*/*", "Content-Type": "application/json"},
            body: jsonEncode(data));
        print('Response status: ${response.statusCode}');
        print('Response body: ${jsonDecode(response.body)}');
        if(jsonDecode(response.body)['isSuccess']){
          setMessage("Sign In success");
          return Future<bool>.value(true);
        }else{
          setMessage(jsonDecode(response.body)['message']);
          return Future<bool>.value(false);
        }
      }else{
        setMessage("Cannot log in");
        return Future<bool>.value(false);
      }
    }catch(err){
      print(err);
      setMessage("Something went wrong");
      return Future<bool>.value(false);
    }
  }



  // Signing Out of Google
  void signOutWithGoogle () async => await _googleSignIn.signOut().then((value) => print(value));


  // sets the email of account to be logged in
  void setEmail(String email) => account.email = email.trim();

  void setPassword(String password) => account.password = password;

  void setLoading(bool val) => loading.value = val;


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
        setMessage("Sign In success");

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

  // Signing out of Facebook
  void signOutOfFaceBook () async =>
     await FacebookAuth.instance.logOut().then((value) => print('Logged Out'), );



  // Removes Object instance
  void removeAccountReference() => (account != null) ? account = null : null;

  // Stores data locally using Shared prefs
  Future<bool> storeUserDetails(body, listKeys) async {
    await listKeys.map((key) async =>
        await SharedPrefs.saveString(key, jsonEncode(body[key]))
    );
    return true;
  }
}


