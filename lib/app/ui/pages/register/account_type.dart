import 'package:flutter/material.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';

class AccountType extends StatefulWidget {
  @override
  _AccountTypeState createState() => _AccountTypeState();
}

class _AccountTypeState extends State<AccountType> {
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
            Text(
              Strings.howdy,
              style: TextStyle(
                  color: AppColors.appColor1,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                  fontFamily: FontFamily.sofiaBold),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.02),
            ),
            Text(
              Strings.selectAccount,
              style: TextStyle(
                  color: AppColors.appColor2,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                  fontFamily: FontFamily.sofiaMedium),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.06),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => LiveStream())
                // );
              },
              child: Container(
                height: 104,
                width: 312,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.appPrimaryColor,
                  // border: Border.all(width: 1, color: AppColors.color5)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
                        ),
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(color: AppColors.color1),
                        ),
                        SizedBox(
                          width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
                        ),
                        Text(
                          Strings.userAction,
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 20,
                            fontFamily: FontFamily.sofiaSemiBold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.06),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => LiveStream())
                // );
              },
              child: Container(
                height: 104,
                width: 312,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.appPrimaryColor,
                    border: Border.all(width: 1, color: AppColors.color5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
                        ),
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(color: AppColors.color1),
                        ),
                        SizedBox(
                          width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
                        ),
                        Text(
                          Strings.buyingAgent,
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 20,
                            fontFamily: FontFamily.sofiaSemiBold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.06),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => LiveStream())
                // );
              },
              child: Container(
                height: 104,
                width: 312,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.appPrimaryColor,
                    border: Border.all(width: 1, color: AppColors.color5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
                        ),
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(color: AppColors.color1),
                        ),
                        SizedBox(
                          width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
                        ),
                        Text(
                          Strings.deliveryAgent,
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 20,
                            fontFamily: FontFamily.sofiaSemiBold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.06),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => LiveStream())
                // );
              },
              child: Container(
                height: 104,
                width: 312,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.appPrimaryColor,
                    border: Border.all(width: 1, color: AppColors.color5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
                        ),
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(color: AppColors.color1),
                        ),
                        SizedBox(
                          width:
                              DeviceUtils.getScaledWidth(context, scale: 0.03),
                        ),
                        Text(
                          Strings.shippingAgent,
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 20,
                            fontFamily: FontFamily.sofiaSemiBold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
                  color: AppColors.appPrimaryColor,
                ),
                child: Text(
                  Strings.continueText,
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 20,
                    fontFamily: FontFamily.sofiaSemiBold,
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
