import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/pages/login/login.dart';
import 'package:fryghthub/app/ui/widgets/custom_textfield_widget.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';

import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';

class UserContact extends StatefulWidget {
  @override
  _UserContactState createState() => _UserContactState();
}

class _UserContactState extends State<UserContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveSafeArea(
        builder: (context, size) {
          return ListView(
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
                    padding: const EdgeInsets.only(top: 18.0, right: 32),
                    child: TextFieldWidget(
                      fontSize: 14,
                      hintColor: AppColors.color11,
                      borderSideColor: AppColors.color9,
                      autoFocus: true,
                      hint: Strings.mobileNumber,
                      inputType: TextInputType.number,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, right: 32),
                    child: TextFieldWidget(
                      fontSize: 14,
                      hintColor: AppColors.color11,
                      borderSideColor: AppColors.color9,
                      autoFocus: true,
                      hint: Strings.password,
                      isObscure: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(top:16.0),
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserLogin())
                  );
                },
                child: Container(
                  height: 56,
                  // width: 311,
                  margin: const EdgeInsets.only(left: 32.0, right: 32),
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
            ],
          );
        },
      ),
    );
  }
}
