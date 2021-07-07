import 'package:flutter/material.dart';
import 'package:fryghthub/app/controller/forgot_password_controller.dart';
import 'package:fryghthub/app/controller/reset_password_controller.dart';
import 'package:fryghthub/app/ui/pages/login/login.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/ui/widgets/custom_textfield_widget.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/message_notification.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';
import 'package:get/get.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final ResetPasswordController resetPasswordController =
      Get.put(ResetPasswordController());
  final ForgotPasswordController forgotPasswordController =
      Get.put(ForgotPasswordController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveSafeArea(builder: (context, size) {
        return ListView(
          children: [
            Container(
              color: AppColors.appColor4,
              height: DeviceUtils.getScaledHeight(context, scale: 0.21),
            ),
            Container(
              margin: EdgeInsets.only(left: 32),
              child: Text(
                Strings.resetPassword,
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
              margin: EdgeInsets.only(left: 32),
              child: RichText(
                text: TextSpan(
                    text: Strings.hi,
                    style: TextStyle(
                        color: AppColors.appColor1,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        fontFamily: FontFamily.sofiaBold),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Abdul',
                        style: TextStyle(
                            color: AppColors.appColor1,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            fontFamily: FontFamily.sofiaBold),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.017),
            ),
            Container(
              margin: EdgeInsets.only(left: 32),
              child: Text(
                Strings.otpMessage,
                style: TextStyle(
                    color: AppColors.appColor2,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    fontFamily: FontFamily.sofiaBold),
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.02),
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
                          Strings.verifyCode,
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
                          fontSize: 14,
                          hintColor: AppColors.color11,
                          borderSideColor: AppColors.color9,
                          autoFocus: true,
                          onChanged: (value) =>
                              resetPasswordController.setCode(value),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter Verification Code';
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
                          Strings.newPassword,
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
                          fontSize: 14,
                          isObscure: true,
                          hintColor: AppColors.color11,
                          borderSideColor: AppColors.color9,
                          autoFocus: true,
                          onChanged: (value) =>
                              resetPasswordController.setPassword(value),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter New password';
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
                    height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  GestureDetector(
                    onTap: () async {
                      //Setting the username required by the reset password link
                      resetPasswordController
                          .setUsername(forgotPasswordController.email);

                      // Performing basic form validation
                      if (_formKey.currentState.validate()) {
                        // Loading spinner
                        resetPasswordController.setLoading(true);
                        if (await resetPasswordController.resetCode()) {
                          // Message displaying Toast
                          MessageNotification.messageToast(
                              resetPasswordController.message.value,
                              context,
                              AppColors.appPrimaryColor);
                          resetPasswordController.setLoading(false);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserLogin()));
                        } else {
                          resetPasswordController.setLoading(false);
                          MessageNotification.messageToast(
                              resetPasswordController.message.value,
                              context,
                              AppColors.appPrimaryColor);
                        }
                      }
                    },
                    child: Obx(
                      () => (resetPasswordController.loading.value)
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
                                  Strings.resetPassword,
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
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.04),
            ),
            Center(
                child: Text(
              Strings.noCode,
              style: TextStyle(
                color: AppColors.appColor2,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: FontFamily.sofiaMedium,
              ),
            )),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.01),
            ),
            Center(
                child: Text(
              Strings.resendCode,
              style: TextStyle(
                color: AppColors.appPrimaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: FontFamily.sofiaBold,
              ),
            )),
          ],
        );
      }),
    );
  }
}
