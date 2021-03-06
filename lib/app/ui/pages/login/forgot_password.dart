import 'package:flutter/material.dart';
import 'package:fryghthub/app/controller/forgot_password_controller.dart';
import 'package:fryghthub/app/ui/pages/login/reset_password.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/ui/widgets/custom_textfield_widget.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/message_notification.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final ForgotPasswordController forgotPasswordController =
      Get.put(ForgotPasswordController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: ResponsiveSafeArea(builder: (context, size) {
        return ListView(
          children: [
            Container(
              color: AppColors.appColor4,
              height: DeviceUtils.getScaledHeight(context, scale: 0.28),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.04),
            ),
            Container(
              margin: EdgeInsets.only(left: 32),
              child: Text(
                Strings.forgotPassword,
                style: TextStyle(
                    color: AppColors.appColor1,
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    fontFamily: FontFamily.sofiaBold),
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.017),
            ),
            Container(
              margin: EdgeInsets.only(left: 32),
              child: Text(
                Strings.enterResetEmail,
                style: TextStyle(
                    color: AppColors.appColor1,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    fontFamily: FontFamily.sofiaMedium),
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.04),
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
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18.0, right: 32),
                    child: TextFieldWidget(
                      fontSize: 14,
                      hintColor: AppColors.color11,
                      borderSideColor: AppColors.color9,
                      autoFocus: true,
                      onChanged: (value) =>
                          forgotPasswordController.setEmail(value),
                      validator: (value) {
                        if (!forgotPasswordController.emailRegex
                            .hasMatch(value)) {
                          return 'Please enter valid email';
                        }
                        return null;
                      },
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.04),
            ),
            GestureDetector(
              onTap: () async {
                Navigator.push(
                           context,
                            MaterialPageRoute(
                                builder: (context) => ResetPassword()));
                if (_formKey.currentState.validate()) {
                  forgotPasswordController.setLoading(true);
                  if (await forgotPasswordController.verifyEmail()) {
                    MessageNotification.messageToast(
                        forgotPasswordController.message.value,
                        context,
                        AppColors.appPrimaryColor);
                    forgotPasswordController.setLoading(false);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetPassword()));
                  } else {
                    forgotPasswordController.setLoading(false);
                    MessageNotification.messageToast(
                        forgotPasswordController.message.value,
                        context,
                        AppColors.appPrimaryColor);
                  }
                }
              },
              child: Obx(
                () => (forgotPasswordController.loading.value)
                    ? Center(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                              AppColors.appPrimaryColor),
                        ),
                      )
                    : Container(
                        height: 56,
                        // width: 311,
                        margin: EdgeInsets.only(left: 32, right: 32),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.appPrimaryColor,
                        ),
                        child: Center(
                          child: Text(
                            Strings.verifyEmail,
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 20,
                              fontFamily: FontFamily.sofiaSemiBold,
                            ),
                          ),
                        ),
                      ),
              ),
            )
          ],
        );
      }),
    );
  }
}
