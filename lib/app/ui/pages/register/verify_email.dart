import 'package:flutter/material.dart';
import 'package:fryghthub/app/controller/account_creation_controller.dart';
import 'package:fryghthub/app/ui/pages/dashboard/get_started.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/ui/widgets/custom_textfield_widget.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/message_notification.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/verify_email_controller.dart';

class VerifyEmail extends StatefulWidget {
  @override
  _VerifyEmailState createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  final _formKey = GlobalKey<FormState>();

  // GetX Binding variable
  final VerifyEmailController verifyEmailController =
      Get.put(VerifyEmailController());

  final AccountCreationController accountCreationController =
      Get.put(AccountCreationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveSafeArea(builder: (context, size) {
        return Form(
          key: _formKey,
          child: ListView(
            children: [
              Container(
                color: AppColors.appColor4,
                height: DeviceUtils.getScaledHeight(context, scale: 0.21),
              ),
              Container(
                margin: EdgeInsets.only(left: 32),
                child: Text(
                  Strings.verifyEmail,
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
                height: DeviceUtils.getScaledHeight(context, scale: 0.02),
              ),
              Container(
                margin: EdgeInsets.only(left: 32),
                child: Text(
                  Strings.otpMessage,
                  style: TextStyle(
                      color: AppColors.appColor1,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      fontFamily: FontFamily.sofiaRegular),
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.1),
              ),
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
                      onChanged: (val) {
                        verifyEmailController.setCode(val);
                      },
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
                  if (_formKey.currentState.validate()) {
                    verifyEmailController.setLoading(true);
                    if (await verifyEmailController
                        .confirmEmail(accountCreationController.account.email)) {
                      // Displaying Toast Information
                      MessageNotification.messageToast(
                          verifyEmailController.message.value,
                          context,
                          AppColors.appPrimaryColor);
                      verifyEmailController.setLoading(false);

                      // Pushing to the Dashboard screen
                      // TODO: Change to rushNmedReplaced
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GetStarted()));
                    } else {
                      verifyEmailController.setLoading(false);
                      MessageNotification.messageToast(
                          verifyEmailController.message.value,
                          context,
                          AppColors.appPrimaryColor);
                    }
                  }
                },
                child: Obx(
                  () => (verifyEmailController.loading.value)
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
                              Strings.verify,
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
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.04),
              ),
              Center(child: Text(Strings.noCode)),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.02),
              ),
              Center(
                  child: GestureDetector(
                      onTap: () async {
                        if (await verifyEmailController.resendEmail(
                            accountCreationController.account.email)) {
                          // Displaying Toast Information
                          MessageNotification.messageToast(
                              verifyEmailController.message.value,
                              context,
                              AppColors.appPrimaryColor);
                          verifyEmailController.setLoading(false);
                        } else {
                          verifyEmailController.setLoading(false);
                          MessageNotification.messageToast(
                              verifyEmailController.message.value,
                              context,
                              AppColors.appPrimaryColor);
                        }
                      },
                      child: Text(Strings.resendCode))),
            ],
          ),
        );
      }),
    );
  }
}
