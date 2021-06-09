
import 'package:fryghthub/app/data/model/account.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:http/http.dart' as http;

class CreateAccountProvider {

  static Future<dynamic> createAccout(Account account) async {
    if (account.accountType == Strings.userAction) {
      sendRequest(Strings.registerUserLink, account);
    }else if(account.accountType == Strings.shippingAgent){
      sendRequest(Strings.registerShippingAgentLink, account);
    }else{
      sendRequest(Strings.registerAgentLink, account);
    }
  }

  static sendRequest(String link, Account account) async {
    try {
      // MultiPart request
      var request = http.MultipartRequest(
        'POST',
        Uri.parse(link),
      );

      Map<String, String> headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };

      request.headers.addAll(headers);

      request.fields.addAll(account.toJson());
      print("request: " + request.toString());
      var res = await request.send();
      print(res);
      return res;
    } catch (e) {
      print(e);
      return e;
    }
  }
}