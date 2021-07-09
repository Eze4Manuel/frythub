import 'dart:convert';

import 'package:fryghthub/app/controller/base_controller.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:http/http.dart' as http;

class VerifyEmailController extends BaseController {
  dynamic data;
  RxBool loading = false.obs;

  String code;

  // sets the type of account to be created
  void setLoading(bool val) {
    loading.value = val;
  }

  void setCode(String codeVal) => code = codeVal;

  Future<bool> resendEmail(email) async {
    String resendEmailUrl = '${Strings.domain}api/User/ConfirmationEmailLink';
    var url = Uri.parse(resendEmailUrl);
    data = {"email": email};
    print(data);

    try {
      var response = await http.post(url,
          headers: {"Accept": "*/*", "Content-Type": "application/json"},
          body: jsonEncode(data));
      print('Response status: ${response.statusCode}');
      print('Response body: ${jsonDecode(response.body)}');

      if (jsonDecode(response.body)['isSuccess']) {
        setMessage(jsonDecode(response.body)['message']);
        return Future<bool>.value(true);
      } else {
        setMessage(jsonDecode(response.body)['message']);
        return Future<bool>.value(false);
      }
    } catch (e) {
      print(e);
      setMessage("Something went wrong");
      return Future<bool>.value(false);
    }
  }


  Future<bool> confirmEmail(email) async {
    String confirmEmailUrl = '${Strings.domain}api/User/confirmEmail';
    var url = Uri.parse(confirmEmailUrl);
    data = {
      "confirmEmailDto": {"code": code, "email": email}
    };

    print(data);
    try {
      var response = await http.post(url,
          headers: {"Accept": "*/*", "Content-Type": "application/json"},
          body: jsonEncode(data));
      print('Response status: ${response.statusCode}');
      print('Response body: ${jsonDecode(response.body)}');

      if (jsonDecode(response.body)['isSuccess']) {
        setMessage(jsonDecode(response.body)['message']);
        return Future<bool>.value(true);
      } else {
        setMessage(jsonDecode(response.body)['message']);
        return Future<bool>.value(false);
      }
    } catch (e) {
      print(e);
      setMessage("Something went wrong");
      return Future<bool>.value(false);
    }
  }
}
