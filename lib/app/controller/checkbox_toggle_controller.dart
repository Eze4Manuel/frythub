

import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

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
      case "${Strings.buyingAgent}:${Strings.deliveryAgent}":
        {
          CheckboxToggleController.selectedOption = Strings.shippingAgent;
          makeRestNull();
          buyingAgent = true;
          deliveryAgent = true;
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
