import 'dart:convert';

import 'package:fryghthub/app/controller/base_controller.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:http/http.dart' as http;

class ForgotPasswordController extends BaseController {

  String email;
  String signInUrl = '${Strings.domain}api/User/resetPasswordLink';
  dynamic data;
  RxBool loading = false.obs;
  void setLoading(bool val) {
    loading.value = val;
  }

  // sets the email of account to be logged in
  void setEmail(String mail) => email = mail;

  Future<bool> verifyEmail() async {

      var url = Uri.parse(signInUrl);
      print(email);
      data = {
          "email": email
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
          setMessage("Reset Link Sent to Your Email");
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
  void removeAccountReference () => (email != null) ? email = null : null;
}
