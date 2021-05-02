import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/pages/register/user_contact.dart';

import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/widgets/custom_textfield_widget.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
              Strings.createAccount,
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
              Strings.fillDetails,
              style: TextStyle(
                  color: AppColors.appColor2,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                  fontFamily: FontFamily.sofiaMedium),
            ),
            // DropdownButton<String>(
            //   onChanged: changeAccountType,
            //   value: Strings.accountType,
            //   style: TextStyle(
            //     color: AppColors.color5,
            //     fontSize: 16,
            //     fontWeight: FontWeight.bold,
            //     fontFamily: FontFamily.sofiaBold,
            //   ),
            //   items: <DropdownMenuItem<String>>[
            //     const DropdownMenuItem<String>(value: "Child 1",
            //         child: const Text(Strings.accountType,)),
            //     const DropdownMenuItem<String>(value: "Child 2",
            //         child: const Text("Child 2")),
            //     const DropdownMenuItem<String>(value: "Child 3",
            //         child: const Text("Child 3")),
            //   ],
            // ),
            GestureDetector(
              onTap: () {},
              child: Container(
                child: Row(
                  children: [
                    Text(
                      Strings.accountType,
                      style: TextStyle(
                        color: AppColors.color5,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: FontFamily.sofiaBold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down_sharp,
                      color: AppColors.color5,
                      size: 16,
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 48,
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
                ),
              ],
            ),
            Container(
              child: Row(
                children: [
                  Divider(),
                  SizedBox(
                    width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                  ),
                  Text(Strings.or),
                  SizedBox(
                    width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                  ),
                  Divider(),
                ],
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.06),
            ),
            Stack(
              children: [
                Text(
                  Strings.firstName,
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
                  Strings.lastName,
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
                  Strings.email,
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
                  color: AppColors.appPrimaryColor,
                ),
                child: Center(
                  child: Text(
                    Strings.Next,
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
      }),
    );
  }

  void _setUsername(context) {
    showModalBottomSheet(
        backgroundColor: AppColors.whiteColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        context: context,
        builder: (BuildContext bc) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 32),
            height: DeviceUtils.getScaledHeight(context, scale: 0.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                ),
                Container(
                  child: Text(
                    Strings.setUsername,
                    style: TextStyle(
                        color: AppColors.appColor1,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        fontFamily: FontFamily.sofiaBold),
                  ),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                ),
                Container(
                  child: RichText(
                    text: TextSpan(
                        text: Strings.hi,
                        style: TextStyle(
                            color: AppColors.appColor1,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            fontFamily: FontFamily.sofiaBold),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Abdul',
                            style: TextStyle(
                                color: AppColors.appColor1,
                                fontWeight: FontWeight.bold,
                                fontSize: 24.0,
                                fontFamily: FontFamily.sofiaBold),
                          ),
                        ]),
                  ),
                ),
                Text(
                  Strings.createAccountMessage,
                  style: TextStyle(
                      color: AppColors.appColor2,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      fontFamily: FontFamily.sofiaMedium),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                ),
                Stack(
                  children: [
                    Text(
                      Strings.username,
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
                      Strings.Next,
                      style: TextStyle(
                        color: AppColors.appPrimaryColor,
                        fontSize: 20,
                        fontFamily: FontFamily.sofiaSemiBold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UserContact()));
                  },
                  child: Container(
                    height: 56,
                    width: 311,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.appPrimaryColor,
                    ),
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
              ],
            ),
          );
        });
  }

  void _changeAccountType(context) {
    showModalBottomSheet(
        backgroundColor: AppColors.whiteColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        context: context,
        builder: (BuildContext bc) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 32),
            height: DeviceUtils.getScaledHeight(context, scale: 0.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                ),
                Text(
                  Strings.accountType,
                  style: TextStyle(
                      color: AppColors.appColor2,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      fontFamily: FontFamily.sofiaMedium),
                ),
                Text(
                  Strings.preferredAccount,
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
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.03),
                            ),
                            Container(
                              height: 56,
                              width: 56,
                              decoration:
                                  BoxDecoration(color: AppColors.color1),
                            ),
                            SizedBox(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.03),
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
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.03),
                            ),
                            Container(
                              height: 56,
                              width: 56,
                              decoration:
                                  BoxDecoration(color: AppColors.color1),
                            ),
                            SizedBox(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.03),
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
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.03),
                            ),
                            Container(
                              height: 56,
                              width: 56,
                              decoration:
                                  BoxDecoration(color: AppColors.color1),
                            ),
                            SizedBox(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.03),
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
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.03),
                            ),
                            Container(
                              height: 56,
                              width: 56,
                              decoration:
                                  BoxDecoration(color: AppColors.color1),
                            ),
                            SizedBox(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.03),
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
              ],
            ),
          );
        });
  }
  // void changeAccountType(String value) {}
}
