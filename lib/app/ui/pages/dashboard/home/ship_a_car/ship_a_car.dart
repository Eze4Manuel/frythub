import 'package:flutter/material.dart';
import 'package:fryghthub/app/controller/buy_a_car_timeline_controller.dart';
import 'package:fryghthub/app/ui/pages/dashboard/home/ship_a_car/car_information.dart';
import 'package:fryghthub/app/ui/pages/dashboard/home/ship_a_car/delivery_address_select.dart';
import 'package:fryghthub/app/ui/pages/dashboard/home/ship_a_car/pick_up_address_select.dart';
import 'package:fryghthub/app/ui/pages/dashboard/home/ship_a_car/request_summary.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/ui/widgets/timeline.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';
import 'package:get/get.dart';

class ShipACar extends StatefulWidget {
  @override
  _ShipACarState createState() => _ShipACarState();
}

class _ShipACarState extends State<ShipACar> {
  BuyACarTimelineController buyACarTimelineController = Get.put(BuyACarTimelineController());
  @override
  void initState() {
    super.initState();
  }

   @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {

        // Setting GetX timeline counter to the initial value of 1
        buyACarTimelineController.updateTimeline(1);

        return true;
      },
      child: Scaffold(
        backgroundColor: AppColors.appColor4,
        body: ResponsiveSafeArea(
          builder: (context, size) {
            return Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                      ),
                       Text(
                          Strings.shipACar,
                          style: TextStyle(
                              color: AppColors.appColor1,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              fontFamily: FontFamily.sofiaBold)
                      ),
                      SizedBox(
                        height:
                        DeviceUtils.getScaledHeight(context, scale: 0.01),
                      ),
                      Text(
                        Strings.shipACarSubtext,
                        style: TextStyle(
                            color: AppColors.color12,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            fontFamily: FontFamily.sofiaBold),
                      ),
                      SizedBox(
                        height:
                        DeviceUtils.getScaledHeight(context, scale: 0.025),
                      ),

                      // Timeline Conditions. Handles timeline coloring and background filling
                      Container(
                        height: 55,
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(()=>
                            (buyACarTimelineController.timeline_steps.value > 0) ?
                            ((buyACarTimelineController.timeline_steps.value > 1) ?
                            Timeline(
                                isFirst: true,
                                isLast: false,
                                icon: Icons.car_rental,
                                color: AppColors.appPrimaryColor,
                                text: '', isFilled: true) :
                            Timeline(
                                isFirst: true,
                                isLast: false,
                                icon: Icons.car_rental,
                                color: AppColors.appPrimaryColor,
                                text: 'Step 1/5', isFilled: false) )
                                :
                            Timeline(
                                isFirst: true,
                                isLast: false,
                                icon: Icons.car_rental,
                                color: AppColors.color13,
                                text: 'Step 1/5',
                                isFilled: false)
                            ),
                            Obx(()=>
                            (buyACarTimelineController.timeline_steps.value > 1) ?
                            ((buyACarTimelineController.timeline_steps.value > 2) ?
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.flag,
                                color: AppColors.appPrimaryColor,
                                text: '', isFilled: true) :
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.flag,
                                color: AppColors.appPrimaryColor,
                                text: 'Step 2/5', isFilled: false) )
                                :
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.flag,
                                color: AppColors.color13,
                                text: '',
                                isFilled: false)
                            ),
                            Obx(()=>
                            (buyACarTimelineController.timeline_steps.value > 2) ?
                            ((buyACarTimelineController.timeline_steps.value > 3) ?
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.pin_drop_outlined,
                                color: AppColors.appPrimaryColor,
                                text: '', isFilled: true) :
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.pin_drop_outlined,
                                color: AppColors.appPrimaryColor,
                                text: 'Step 3/5', isFilled: false) )
                                :
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.pin_drop_outlined,
                                color: AppColors.color13,
                                text: '',
                                isFilled: false)
                            ),
                            Obx(()=>
                            (buyACarTimelineController.timeline_steps.value > 3) ?
                            ((buyACarTimelineController.timeline_steps.value > 4) ?
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.waves,
                                color: AppColors.appPrimaryColor,
                                text: '', isFilled: true) :
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.waves,
                                color: AppColors.appPrimaryColor,
                                text: 'Step 4/5', isFilled: false) )
                                :
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.waves,
                                color: AppColors.color13,
                                text: '',
                                isFilled: false)
                            ),
                            Obx(()=>
                            (buyACarTimelineController.timeline_steps.value > 4) ?
                            ((buyACarTimelineController.timeline_steps.value > 5) ?
                            Timeline(
                                isFirst: false,
                                isLast: true,
                                icon: Icons.credit_card,
                                color: AppColors.appPrimaryColor,
                                text: '', isFilled: true) :
                            Timeline(
                                isFirst: false,
                                isLast: true,
                                icon: Icons.credit_card,
                                color: AppColors.appPrimaryColor,
                                text: 'Step 5/5', isFilled: false) )
                                :
                            Timeline(
                                isFirst: false,
                                isLast: true,
                                icon: Icons.credit_card,
                                color: AppColors.color13,
                                text: '',
                                isFilled: false)
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: DeviceUtils.getScaledHeight(context, scale: 0.065),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                      margin: EdgeInsets.only(top: DeviceUtils.getScaledHeight(context, scale: 0.3)),
                      // Uses GetX BuyACarTimelineController to controll the changes in the states
                      // of users progress.
                      child: Obx( () => _updateTimeline(buyACarTimelineController.timeline_steps.value))),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, top: 10.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: (){

                        // Setting GetX timeline counter to the initial value of 1
                        buyACarTimelineController.updateTimeline(1);
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: AppColors.appPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ] );
          },
        ),
      ),
    );
  }
}

_updateTimeline(value){
  print(value);
  switch (value) {
    case 1: return  CarInformation();
    break;
    case 2: return PickUpAddressSelect();
    break;
    case 3: return DeliveryAddressSelect();
    break;
    case 4: return RequestSummary();
    break;
    case 5: {

    }
    break;
  }
}