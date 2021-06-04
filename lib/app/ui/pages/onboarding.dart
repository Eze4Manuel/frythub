import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fryghthub/app/ui/pages/login/login.dart';
import 'package:fryghthub/app/ui/pages/register/account_type.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: ResponsiveSafeArea(builder: (context, size) {
        return ContentPage();
      }),
    );
  }
}

class ContentPage extends StatefulWidget {
  ContentPageStage createState() => ContentPageStage();
}

class ContentPageStage extends State<ContentPage> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
          color: isActive ? AppColors.appPrimaryColor : Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.appColor3, width: 1)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: AppColors.whiteColor,
          child: ListView(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    Container(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.43),
                      width: DeviceUtils.getScaledWidth(context, scale: 1),
                      color: AppColors.appColor4,
                    ),
                    Container(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.43),
                      width: DeviceUtils.getScaledWidth(context, scale: 1),
                      color: AppColors.appColor4,
                    ),
                    Container(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.43),
                      width: DeviceUtils.getScaledWidth(context, scale: 1),
                      color: AppColors.appColor4,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.04),
              ),
              Container(
                margin: EdgeInsets.only(left: 33),
                child: Text(
                  Strings.borderlessDelivery,
                  style: TextStyle(
                      color: AppColors.appColor1,
                      fontSize: 32,
                      fontFamily: FontFamily.sofiaBold),
                  //style: kTitleStyle,
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.04),
              ),
              Container(
                margin: EdgeInsets.only(left: 33),
                child: Text(
                  Strings.selectAccount,
                  style: TextStyle(
                      color: AppColors.appColor2,
                      fontSize: 16,
                      fontFamily: FontFamily.sofiaMedium),
                  //style: kTitleStyle,
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.04),
              ),
              Container(
                margin: EdgeInsets.only(left: 33),
                child: Row(
                  children: _buildPageIndicator(),
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.04),
              ),
              GestureDetector(
                onTap: () {
                  _startShipping(context);
                  // Navigator.pushNamed(context,);
                },
                child: Container(
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.appPrimaryColor),
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  child: Center(
                    child: Text(
                      Strings.startShipping,
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
          ),
        ),
      ),
    );
  }

  _startShipping(context) {
    showModalBottomSheet(
        backgroundColor: AppColors.whiteColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
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
                    Strings.getIn,
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
                Text(
                  Strings.preferredAccount,
                  style: TextStyle(
                      color: AppColors.appColor2,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      fontFamily: FontFamily.sofiaMedium),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UserLogin())
                    );
                  },
                  child: Container(
                    height: 56,
                    width: 311,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.whiteColor,
                        border: Border.all(width: 1, color: AppColors.color5)),
                    child: Center(
                      child: Text(
                        Strings.signIn,
                        style: TextStyle(
                          color: AppColors.appPrimaryColor,
                          fontSize: 20,
                          fontFamily: FontFamily.sofiaSemiBold,
                        ),
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
                        MaterialPageRoute(builder: (context) => AccountType()));
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
            ),
          );
        });
  }
}
