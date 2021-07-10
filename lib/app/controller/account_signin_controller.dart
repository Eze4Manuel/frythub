import 'dart:convert';

import 'package:fryghthub/app/data/model/account.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/utils/shared_prefs.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:http/http.dart' as http;
import 'package:google_sign_in/google_sign_in.dart';

import 'base_controller.dart';

class AccountSigninController extends BaseController {

  Account account = Account();
  String signInUrl = '${Strings.domain}api/User/signin';
  RxBool loading = false.obs;
  static const List user_keys = ['email','token','tokenExpiry'];
  dynamic data;




  // sets the email of account to be logged in
  void setEmail(String email) => account.email = email;

  void setPassword(String password) => account.password = password;

  void setLoading(bool val) {
    loading.value = val;
   }

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

        //TODO: Implement shared Prefenece. Use it to store users details
        if(jsonDecode(response.body)['isSuccess']){
          setMessage("Sign In success");
          if(await storeuserDetails(jsonDecode(response.body))){
            return Future<bool>.value(true);
          }
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
  void removeAccountReference() => (account != null) ? account = null : null;
  Future<bool> storeuserDetails(body) async {
    var list = await user_keys.map((key) async =>
        await SharedPrefs.saveString(key, jsonEncode(body[key]))
    );
    return true;
  }
}
