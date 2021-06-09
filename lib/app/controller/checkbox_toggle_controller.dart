

import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:get/get.dart';

class CheckboxToggleController extends GetxController {

  bool userAction = false;
  bool buyingAgent = false;
  bool deliveryAgent = false;
  bool shippingAgent = false;

  static String selectedOption;
  // sets the email of account to be logged in
  void updateCheckbox( String value ) {
    print(value);
    switch (value){
      case Strings.userAction:
        {
          CheckboxToggleController.selectedOption = Strings.userAction;
          makeRestNull();
          userAction = true;
        }
        break;
      case Strings.deliveryAgent:
        {
          CheckboxToggleController.selectedOption = Strings.deliveryAgent;
          makeFewNull();
          deliveryAgent = true;
        }
        break;
      case Strings.buyingAgent:
        {
          CheckboxToggleController.selectedOption = Strings.buyingAgent;
          makeFewNull();
          buyingAgent = true;
        }
        break;
      case Strings.shippingAgent:
        {
          CheckboxToggleController.selectedOption = Strings.shippingAgent;
          makeRestNull();
          shippingAgent = true;
        }
        break;
    }
    update();
  }

  void makeRestNull(){
    userAction = false;
    buyingAgent = false;
    deliveryAgent = false;
    shippingAgent = false;
  }
  void makeFewNull(){
    userAction = false;
    shippingAgent = false;
  }
}
