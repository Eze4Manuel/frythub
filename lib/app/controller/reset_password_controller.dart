

import 'dart:convert';

import 'package:fryghthub/app/controller/base_controller.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:http/http.dart' as http;

class ResetPasswordController extends BaseController {

  String code;
  String username;
  String password;
  String signInUrl = '${Strings.domain}api/User/resetPassword';
  dynamic data;
  RxBool loading = false.obs;

  void setLoading(bool val) {
    loading.value = val;
  }

  // sets the email of account to be logged in
  void setCode(String codeVal) => code = codeVal;
  void setUsername(String usernameVal) => username = usernameVal;
  void setPassword(String passwordVal) => password = passwordVal;

  Future<bool> resetCode() async {
    var url = Uri.parse(signInUrl);

    data = {
      "passwordResetDto": {
        "code": code,
        "username": username,
        "newPassword": password
      }
    };
    print(url);
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
  void removeAccountReference (){
    code = null;
    password = null;
  }
}
