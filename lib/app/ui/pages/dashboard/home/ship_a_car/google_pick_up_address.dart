import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:fryghthub/app/controller/buy_a_car_timeline_controller.dart';
import 'package:fryghthub/app/controller/google_pickup_controller.dart';
import 'package:fryghthub/app/ui/components/next_step_button.dart';
import 'package:fryghthub/app/ui/components/pull_up.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/form_field_decoration.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';
import 'package:get/instance_manager.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GooglePickUpAddress extends StatefulWidget {
  @override
  _GooglePickUpAddressState createState() => _GooglePickUpAddressState();
}

class _GooglePickUpAddressState extends State<GooglePickUpAddress> {
  bool _isSelected = false;
  BuyACarTimelineController buyACarTimelineController =
      Get.put(BuyACarTimelineController());

  GooglePickupController googlePickupController =
  Get.put(GooglePickupController());

  @override
  void initState() {
    super.initState();
    googlePickupController.textDateController.text = '';
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: ResponsiveSafeArea(builder: (context, size) {
          return Stack(children: <Widget>[
            Container(
              height: DeviceUtils.getScaledHeight(context, scale: 1),
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
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Icon(
                        Icons.arrow_back,
                        color: AppColors.appColor1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.03),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 10),

                    child: TextFormField(
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
                       onChanged: (val) {},
                    ),
                  ),
                  Container(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.72),
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(
                        target: googlePickupController.mainLocation,
                        zoom: 13.0,
                      ),
                      mapType: MapType.normal,
                      onMapCreated: (controller) {
                        setState(() {
                          googlePickupController.myMapController = controller;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),

            SlidingUpPanel(
              maxHeight: DeviceUtils.getScaledHeight(context, scale: 0.65),
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
                  PullUpComponent(),
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
                            Icon(Icons.flag_outlined, color: AppColors.whiteColor),
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
                              Icons.flag_outlined,
                              color: AppColors.color12,
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
                                  color: AppColors.color12,
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
                        DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  // Preferred Pickup Date

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
                          controller: googlePickupController.textDateController,
                          readOnly: true,
                          style: TextStyle(
                              color: AppColors.color12,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              fontFamily: FontFamily.sofiaBold),
                          decoration: textInputDecoration.copyWith(
                              hintText: 'Ojay 15', suffixIcon: Icon(Icons.date_range)),
                          validator: (val) => val.isEmpty ? 'Name' : null,
                          onChanged: (val) {},
                          onTap: () {
                            DatePicker.showDatePicker(context,
                                showTitleActions: true,
                                minTime: DateTime(2018, 3, 5),
                                maxTime: DateTime(2022, 6, 7),
                                onChanged: (date) {
                                print('de');
                                },
                                onConfirm: (date) {
                                  googlePickupController.setPreferredPickupDate(date);
                                }, currentTime: new DateTime.now(), locale: LocaleType.en);
                          },
                        ),
                      ),
                      SizedBox(
                        width: DeviceUtils.getScaledHeight(context,
                            scale: 0.01),
                      ),
                      GestureDetector(
                          onTap: (){
                            googlePickupController.textDateController.text = '';
                          },
                          child: Icon(Icons.close, color: AppColors.color5))
                    ],
                  ),
                  SizedBox(
                    height:
                        DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),
                  GestureDetector(
                      onTap: () {
                        // Setting GetX timeline counter to the value of 3
                        buyACarTimelineController.updateTimeline(3);
                        Navigator.pop(context);

                      },
                      child: NextStepButtonComponent(text: Strings.nextstep, trailtext: '3/5')),
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
