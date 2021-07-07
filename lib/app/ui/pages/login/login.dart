import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fryghthub/app/controller/account_signin_controller.dart';
import 'package:fryghthub/app/ui/pages/dashboard/get_started.dart';
import 'package:fryghthub/app/ui/pages/login/forgot_password.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fryghthub/app/ui/pages/register/account_type.dart';
import 'package:fryghthub/app/utils/message_notification.dart';

import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/widgets/custom_textfield_widget.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:get/get.dart';

class UserLogin extends StatefulWidget {
  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {

  final AccountSigninController accountSigninController =
  Get.put(AccountSigninController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Transform.translate(
          offset: Offset(-15, 0),
          child: Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
        ),
        elevation: 0.0,
        iconTheme: IconThemeData(color: AppColors.appColor1),
        backgroundColor: AppColors.whiteColor,
      ),
      body: ResponsiveSafeArea(builder: (context, size) {
        return ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 33),
              child: Text(
                Strings.signIn,
                style: TextStyle(
                    color: AppColors.appColor1,
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    fontFamily: FontFamily.sofiaBold),
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.02),
            ),
            Container(
              margin: EdgeInsets.only(left: 33),
              child: Text(
                Strings.selectAccount,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 48,
                  child: Icon(
                    FontAwesomeIcons.google,
                    color: AppColors.whiteColor,
                    size: 18,
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.color7,
                      borderRadius: BorderRadius.circular(8)),
                ),
                SizedBox(
                  width: DeviceUtils.getScaledWidth(context, scale: 0.04),
                ),
                Container(
                  width: 80,
                  height: 48,
                  decoration: BoxDecoration(
                      color: AppColors.color8,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    FontAwesomeIcons.facebookSquare,
                    color: AppColors.whiteColor,
                    size: 18,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.024),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 1,
                    color: AppColors.color9,
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                  ),
                  Text(
                    Strings.emailAddress,
                    style: TextStyle(
                      color: AppColors.color10,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: FontFamily.sofiaBold,
                    ),
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                  ),
                  Container(
                    width: 100,
                    height: 1,
                    color: AppColors.color9,
                  )
                ],
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.024),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
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
                        padding: const EdgeInsets.only(top: 16.0, right: 32),
                        child: TextFieldWidget(
                          hint: Strings.emailAddress,
                          fontSize: 14,
                          hintColor: AppColors.color11,
                          borderSideColor: AppColors.color9,
                          autoFocus: true,
                          onChanged: (value) => accountSigninController.setEmail(value),
                          validator: (value) {
                            if (!accountSigninController.emailRegex.hasMatch(value)) {
                              return 'Please enter valid email';
                            }
                            return null;
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.02),
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
                      Padding(
                        padding: const EdgeInsets.only(top: 18, right: 32),
                        child: TextFieldWidget(
                          // enabled: false,
                          hint: Strings.password,
                          isObscure: true,
                          fontSize: 14,
                          hintColor: AppColors.color11,
                          borderSideColor: AppColors.color9,
                          autoFocus: true,
                          onChanged: (value) => accountSigninController.setPassword(value),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Fill in password';
                            }
                            return null;
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  GestureDetector(
                      onTap: () async {
                        if(_formKey.currentState.validate()){
                          accountSigninController.setLoading(true);
                          if( await accountSigninController.signInAccount() ){
                            // Displaying Toast Information
                            MessageNotification.messageToast(accountSigninController.message.value, context, AppColors.appPrimaryColor);
                            accountSigninController.setLoading(false);
                            // Pushing to the Dashboard screen
                            // TODO: Change to rushNmedReplaced
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => GetStarted()));
                          }else{
                            accountSigninController.setLoading(false);
                            MessageNotification.messageToast(accountSigninController.message.value, context, AppColors.appPrimaryColor);
                          }
                        }
                      },
                      child: Obx(() => (accountSigninController.loading.value) ?
                      Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(AppColors.appPrimaryColor),
                        ),
                      )
                          :
                      Container(
                        height: 56,
                        // width: 311,
                        margin: EdgeInsets.only(left: 32, right: 32),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.appPrimaryColor,
                        ),
                        child: Center(
                          child: Text(
                            Strings.continueShipping,
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 20,
                              fontFamily: FontFamily.sofiaSemiBold,
                            ),
                          ),
                        ),
                      ),)
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                ],
              )
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  // Unsetting any created account instance
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPassword()));
                },
                child: Text(
                  Strings.forgotPassword,
                  style: TextStyle(
                    color: AppColors.appPrimaryColor,
                    fontSize: 20,
                    fontFamily: FontFamily.sofiaSemiBold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.04),
            ),
            Center(
              child: Text(
                Strings.noAccount,
                style: TextStyle(
                  color: AppColors.appColor2,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: FontFamily.sofiaMedium,
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AccountType()));
                },
                child: Text(
                  Strings.createAccount,
                  style: TextStyle(
                    color: AppColors.appPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: FontFamily.sofiaBold,
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}

