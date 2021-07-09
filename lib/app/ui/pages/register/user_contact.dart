import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/pages/register/verify_email.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/ui/widgets/custom_textfield_widget.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/message_notification.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../controller/account_creation_controller.dart';

class UserContact extends StatefulWidget {
  @override
  _UserContactState createState() => _UserContactState();
}

class _UserContactState extends State<UserContact> {
  TextEditingController _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // GetX Binding variable
  final AccountCreationController accountCreationController =
      Get.put(AccountCreationController());

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    _controller.text = accountCreationController.getEmail();

    return Scaffold(
      body: ResponsiveSafeArea(
        builder: (context, size) {
          return Form(
            key: _formKey,
            child: ListView(
              children: [
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.06),
                ),
                Container(
                  margin: EdgeInsets.only(left: 32),
                  child: RichText(
                    text: TextSpan(
                        text: Strings.hey,
                        style: TextStyle(
                            color: AppColors.appColor1,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0,
                            fontFamily: FontFamily.sofiaBold),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Abdul',
                            style: TextStyle(
                                color: AppColors.appColor1,
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0,
                                fontFamily: FontFamily.sofiaBold),
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                ),
                Container(
                  margin: EdgeInsets.only(left: 32),
                  child: Text(
                    Strings.borderessDeliveryMessage,
                    style: TextStyle(
                        color: AppColors.appColor2,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                        fontFamily: FontFamily.sofiaMedium),
                  ),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.06),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text(
                        Strings.mobileNumber,
                        style: TextStyle(
                          color: AppColors.color6,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.sofiaMedium,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 18.0, right: 32, left: 32),
                      child: InternationalPhoneNumberInput(
                        onInputChanged: (PhoneNumber number) {
                          accountCreationController
                              .setPhone(number.phoneNumber);
                        },
                        onInputValidated: (bool value) {
                          print(value);
                        },
                        selectorConfig: SelectorConfig(
                          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                        ),
                        ignoreBlank: false,
                        autoValidateMode: AutovalidateMode.disabled,
                        selectorTextStyle: TextStyle(color: Colors.black),
                        initialValue: number,
                        textFieldController: controller,
                        formatInput: false,
                        keyboardType: TextInputType.numberWithOptions(
                            signed: true, decimal: true),
                        inputBorder: OutlineInputBorder(),
                        onSaved: (PhoneNumber number) {
                          print('On Saved: $number');
                        },
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.03),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text(
                        Strings.emailAddress,
                        style: TextStyle(
                          color: AppColors.color6,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.sofiaMedium,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, right: 32),
                      child: TextFieldWidget(
                        textController: _controller,
                        fontSize: 14,
                        hintColor: AppColors.color11,
                        borderSideColor: AppColors.color9,
                        autoFocus: true,
                        hint: Strings.emailAddress,
                        inputType: TextInputType.emailAddress,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.03),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text(
                        Strings.password,
                        style: TextStyle(
                          color: AppColors.color6,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.sofiaMedium,
                        ),
                      ),
                    ),

                    //TODO : Implement TODO show password
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, right: 32),
                      child: TextFieldWidget(
                        fontSize: 14,
                        hintColor: AppColors.color11,
                        borderSideColor: AppColors.color9,
                        autoFocus: true,
                        hint: Strings.password,
                        isObscure: true,
                        onChanged: (value) =>
                            accountCreationController.setPassword(value),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Fill in password';
                          }
                          return null;
                        },
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            child: Text(
                              Strings.show,
                              style: TextStyle(
                                color: AppColors.color12,
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                fontFamily: FontFamily.sofiaMedium,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.08),
                ),
                GestureDetector(
                  onTap: () async {
                    if (_formKey.currentState.validate()) {
                      accountCreationController.setLoading(true);
                      if (await accountCreationController.createNewAccount()) {
                        // Displaying Toast Information
                        MessageNotification.messageToast(
                            accountCreationController.message.value,
                            context,
                            AppColors.appPrimaryColor);
                        accountCreationController.setLoading(false);

                        // Pushing to the Dashboard screen
                        // TODO: Change to rushNmedReplaced
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VerifyEmail()));
                      } else {
                        accountCreationController.setLoading(false);
                        MessageNotification.messageToast(accountCreationController.message.value, context, AppColors.appPrimaryColor);
                      }
                    }
                  },
                  child: Obx(
                    () => (accountCreationController.loading.value)
                        ? Center(
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  AppColors.appPrimaryColor),
                            ),
                          )
                        : Container(
                            height: 56,
                            // width: 311,
                            margin:
                                const EdgeInsets.only(left: 32.0, right: 32),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.appPrimaryColor,
                            ),
                            child: Center(
                              child: Text(
                                Strings.createAccount,
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 20,
                                  fontFamily: FontFamily.sofiaSemiBold,
                                ),
                              ),
                            ),
                          ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    // other dispose methods
    _controller.dispose();
    super.dispose();
  }
}
