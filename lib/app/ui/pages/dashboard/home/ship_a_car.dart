import 'package:flutter/material.dart';
import 'package:fryghthub/app/controller/buy_a_car_timeline_controller.dart';
import 'package:fryghthub/app/ui/pages/dashboard/home/car_information.dart';
import 'package:fryghthub/app/ui/pages/dashboard/home/pick_up_address_select.dart';
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
    return Scaffold(
      backgroundColor: AppColors.appColor4,
      body: ResponsiveSafeArea(
        builder: (context, size) {
          return Stack(
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.close,
                                color: AppColors.appPrimaryColor,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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
                                  ],
                                ),
                              ),
                              SizedBox(
                                width:
                                DeviceUtils.getScaledHeight(context, scale: 0.065),
                              ),
                            ],
                          ),
                          SizedBox(
                            height:
                            DeviceUtils.getScaledHeight(context, scale: 0.065),
                          ),
<<<<<<< HEAD

                          // Timeline
                          Container(
                            height: 55,
                            width: DeviceUtils.getScaledHeight(context, scale: 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Obx(()=>
                                (buyACarTimelineController.timeline_steps.value > 0) ?
                                ((buyACarTimelineController.timeline_steps.value > 1) ?
                                Timeline(
                                    isFirst: false,
                                    isLast: false,
                                    icon: Icons.car_rental,
                                    color: AppColors.appPrimaryColor,
                                    text: 'Step 1/5', isFilled: true) :
                                Timeline(
                                    isFirst: false,
                                    isLast: false,
                                    icon: Icons.flag,
                                    color: AppColors.appPrimaryColor,
                                    text: 'Step 1/5', isFilled: false) )
                                    :
                                Timeline(
                                    isFirst: false,
                                    isLast: false,
                                    icon: Icons.car_rental,
                                    color: AppColors.color13,
                                    text: 'Step 1/6',
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
                                    text: 'Step 2/5', isFilled: true) :
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
                                    text: 'Step 3/5', isFilled: true) :
                                Timeline(
                                    isFirst: false,
                                    isLast: false,
                                    icon: Icons.pin_drop_outlined,
                                    color: AppColors.color13,
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
                                    text: 'Step 4/5', isFilled: true) :
                                Timeline(
                                    isFirst: false,
                                    isLast: false,
                                    icon: Icons.waves,
                                    color: AppColors.color13,
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
                                    isLast: false,
                                    icon: Icons.credit_card,
                                    color: AppColors.appPrimaryColor,
                                    text: 'Step 5/5', isFilled: true) :
                                Timeline(
                                    isFirst: false,
                                    isLast: false,
                                    icon: Icons.credit_card,
                                    color: AppColors.color13,
                                    text: 'Step 5/5', isFilled: false) )
                                    :
                                Timeline(
                                    isFirst: false,
                                    isLast: false,
                                    icon: Icons.credit_card,
                                    color: AppColors.color13,
                                    text: '',
                                    isFilled: false)
                                ),
                              ],
                            ),
                          ),
                        ],
=======
                        ],
                      ),
                      SizedBox(
                        height:
                            DeviceUtils.getScaledHeight(context, scale: 0.065),
                      ),

                      // Timeline
                      Container(
                        height: 55,
                        width: DeviceUtils.getScaledHeight(context, scale: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(()=>
                            (buyACarTimelineController.timeline_steps.value > 0) ?
                            ((buyACarTimelineController.timeline_steps.value > 1) ?
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.car_rental,
                                color: AppColors.appPrimaryColor,
                                text: 'Step 1/5', isFilled: true) :
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.flag,
                                color: AppColors.appPrimaryColor,
                                text: 'Step 1/5', isFilled: false) )
                                :
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.car_rental,
                                color: AppColors.color13,
                                text: 'Step 1/6',
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
                                  text: 'Step 2/5', isFilled: true) :
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
                                text: 'Step 3/5', isFilled: true) :
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.pin_drop_outlined,
                                color: AppColors.color13,
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
                                text: 'Step 4/5', isFilled: true) :
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.waves,
                                color: AppColors.color13,
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
                                isLast: false,
                                icon: Icons.credit_card,
                                color: AppColors.appPrimaryColor,
                                text: 'Step 5/5', isFilled: true) :
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.credit_card,
                                color: AppColors.color13,
                                text: 'Step 5/5', isFilled: false) )
                                :
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.credit_card,
                                color: AppColors.color13,
                                text: '',
                                isFilled: false)
                            ),

                          ],
                        ),
>>>>>>> e3a60c6 (Abstracted timeline feature for buy_a_car section, updated .gitignore file)
                      ),
                    ),
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.065),
                    ),
                  ],
                ),
<<<<<<< HEAD
              ),
              SingleChildScrollView(
                child: Container(
                    margin: EdgeInsets.only(top: DeviceUtils.getScaledHeight(context, scale: 0.35)),
                    child: Obx( () => _updateTimeline(buyACarTimelineController.timeline_steps.value))),
              ),
            ] );
=======
                Obx( () => _updateTimeline(buyACarTimelineController.timeline_steps.value)),
              ],
            ),
          );
>>>>>>> e3a60c6 (Abstracted timeline feature for buy_a_car section, updated .gitignore file)
        },
      ),
    );
  }
}


_updateTimeline( value){
  print(value);
  switch (value) {
    case 1: return  CarInformation();
    break;
<<<<<<< HEAD
    case 2: return PickUpAddressSelect();
=======
    case 2: return PickUpAddress();
>>>>>>> e3a60c6 (Abstracted timeline feature for buy_a_car section, updated .gitignore file)
    break;
    case 3: {

    }
    break;
    case 4: {

    }
    break;
    case 5: {

    }
    break;
    case 6: {

    }
    break;
  }
}