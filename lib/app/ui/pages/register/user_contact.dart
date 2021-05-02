import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/widgets/custom_textfield_widget.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';

import '../../../utils/device_utils.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';
import '../../theme/app_strings.dart';

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
              Container(
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
              Text(
                Strings.borderessDeliveryMessage,
                style: TextStyle(
                    color: AppColors.appColor2,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    fontFamily: FontFamily.sofiaMedium),
              ),
              Stack(
                children: [
                  Text(
                    Strings.mobileNumber,
                    style: TextStyle(
                      color: AppColors.color6,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.sofiaMedium,
                    ),
                  ),
                  TextFieldWidget()
                ],
              ),
              Stack(
                children: [
                  Text(
                    Strings.emailAddress,
                    style: TextStyle(
                      color: AppColors.color6,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.sofiaMedium,
                    ),
                  ),
                  TextFieldWidget()
                ],
              ),
              Stack(
                children: [
                  Text(
                    Strings.password,
                    style: TextStyle(
                      color: AppColors.color6,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.sofiaMedium,
                    ),
                  ),
                  TextFieldWidget()
                ],
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => LiveStream())
                  // );
                },
                child: Container(
                  height: 56,
                  width: 311,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.whiteColor,
                      border: Border.all(width: 1, color: AppColors.color5)),
                  child: Text(
                    Strings.createAccount,
                    style: TextStyle(
                      color: AppColors.appPrimaryColor,
                      fontSize: 20,
                      fontFamily: FontFamily.sofiaSemiBold,
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
