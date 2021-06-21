import 'package:flutter/material.dart';
import 'package:fryghthub/app/controller/buy_a_car_timeline_controller.dart';
import 'package:fryghthub/app/ui/components/next_step_button.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/form_field_decoration.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';
import 'package:get/instance_manager.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class GooglePickUpAddress extends StatefulWidget {
  @override
  _GooglePickUpAddressState createState() => _GooglePickUpAddressState();
}

class _GooglePickUpAddressState extends State<GooglePickUpAddress> {
  bool _isSelected = false;
  BuyACarTimelineController buyACarTimelineController =
      Get.put(BuyACarTimelineController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: ResponsiveSafeArea(builder: (context, size) {
          return Stack(children: <Widget>[
            Container(
              height: DeviceUtils.getScaledHeight(context, scale: 0.2),
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.03),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColors.appColor1,
                    ),
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.03),
                  ),
                  TextFormField(
                    decoration: textInputDecoration.copyWith(
                      hintText: 'Search by address',
                      suffixIcon: Icon(
                        Icons.search,
                        color: AppColors.color7,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.color4, width: 1.0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.color4, width: 2.0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    validator: (val) => val.isEmpty ? 'Name' : null,
                    onChanged: (val) {},
                  ),
                ],
              ),
            ),
            SlidingUpPanel(
              maxHeight: DeviceUtils.getScaledHeight(context, scale: 0.7),
              padding: EdgeInsets.symmetric(horizontal: 25),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.0),
                  topLeft: Radius.circular(25.0)),
              boxShadow: [
                BoxShadow(
                  color: AppColors.color13,
                  blurRadius: 25.0, // soften the shadow
                  spreadRadius: 2.0, //extend the shadow
                  offset: Offset(0.0, 2.0),
                )
              ],
              panel: Column(
                children: [
                  SizedBox(
                    height:
                        DeviceUtils.getScaledHeight(context, scale: 0.02),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 60,
                      height: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: AppColors.color13,
                      ),
                      child: Container(),
                    ),
                  ),
                  SizedBox(
                    height:
                        DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: AppColors.appPrimaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:
                            Icon(Icons.flag, color: AppColors.whiteColor),
                      ),
                      SizedBox(
                        width: DeviceUtils.getScaledHeight(context,
                            scale: 0.01),
                      ),
                      Text(
                        Strings.carPickUpAddress,
                        style: TextStyle(
                            color: AppColors.appColor1,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            fontFamily: FontFamily.sofiaBold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height:
                        DeviceUtils.getScaledHeight(context, scale: 0.03),
                  ),
                  (!_isSelected)
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                                child: Icon(
                              Icons.flag,
                              color: AppColors.color11,
                              size: 30,
                            )),
                            SizedBox(
                              height: DeviceUtils.getScaledHeight(context,
                                  scale: 0.02),
                            ),
                            Text(
                              Strings.chooseMapAddress,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.color11,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16.0,
                                  fontFamily: FontFamily.sofiaRegular),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Divider(),
                            Container(
                              height: DeviceUtils.getScaledHeight(context,
                                  scale: 0.15),
                              child: Row(
                                children: [
                                  Expanded(flex: 4, child: Text('')),
                                  SizedBox(
                                    width: DeviceUtils.getScaledHeight(
                                        context,
                                        scale: 0.01),
                                  ),
                                  Icon(Icons.close,
                                      color: AppColors.color5)
                                ],
                              ),
                            ),
                            Divider()
                          ],
                        ),
                  SizedBox(
                    height:
                        DeviceUtils.getScaledHeight(context, scale: 0.02),
                  ),
                  // Preferred Pickup Date
                  SizedBox(
                    height:
                        DeviceUtils.getScaledHeight(context, scale: 0.02),
                  ),
                  Text(
                    Strings.preferredPickupDateAndTime,
                    style: TextStyle(
                        color: AppColors.appColor1,
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                        fontFamily: FontFamily.sofiaRegular),
                  ),
                  SizedBox(
                    height:
                        DeviceUtils.getScaledHeight(context, scale: 0.01),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: textInputDecoration.copyWith(
                            hintText: "Ojay 15",
                            suffixIcon: Icon(Icons.date_range),
                          ),
                          validator: (val) => val.isEmpty ? 'Name' : null,
                          onChanged: (val) {},
                        ),
                      ),
                      SizedBox(
                        width: DeviceUtils.getScaledHeight(context,
                            scale: 0.01),
                      ),
                      Icon(Icons.close, color: AppColors.color5)
                    ],
                  ),
                  SizedBox(
                    height:
                        DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  GestureDetector(
                      onTap: () {
                        buyACarTimelineController.updateTimeline(3);
                      },
                      child: NextStepButtonComponent(text: '3/5')),
                  SizedBox(
                    height:
                        DeviceUtils.getScaledHeight(context, scale: 0.01),
                  ),
                ],
              ),
            ),
          ]);
        }));
  }
}
