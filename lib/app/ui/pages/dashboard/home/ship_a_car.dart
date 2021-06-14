import 'package:flutter/material.dart';
import 'package:fryghthub/app/ui/pages/dashboard/home/car_information.dart';
import 'package:fryghthub/app/ui/pages/dashboard/home/pick_up_address.dart';
import 'package:fryghthub/app/ui/theme/app_colors.dart';
import 'package:fryghthub/app/ui/theme/app_fonts.dart';
import 'package:fryghthub/app/ui/theme/app_strings.dart';
import 'package:fryghthub/app/ui/widgets/timeline.dart';
import 'package:fryghthub/app/utils/device_utils.dart';
import 'package:fryghthub/app/utils/responsive_safe_area.dart';

class ShipACar extends StatefulWidget {
  @override
  _ShipACarState createState() => _ShipACarState();
}

class _ShipACarState extends State<ShipACar> {
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
          return SingleChildScrollView(
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

                      // Timeline
                      Container(
                        height: 55,
                        width: DeviceUtils.getScaledHeight(context, scale: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Timeline(
                                isFirst: true,
                                isLast: false,
                                icon: Icons.car_rental,
                                color: AppColors.appPrimaryColor,
                                text: 'Step 1/6'),
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.flag,
                                color: AppColors.color13,
                                text: ''),
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.pin_drop_outlined,
                                color: AppColors.color13,
                                text: ''),
                            Timeline(
                                isFirst: false,
                                isLast: false,
                                icon: Icons.waves,
                                color: AppColors.color13,
                                text: ''),
                            Timeline(
                                isFirst: false,
                                isLast: true,
                                icon: Icons.credit_card,
                                color: AppColors.color13,
                                text: ''),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.065),
                ),
                // CarInformation(),
                PickUpAddress(),
              ],
            ),
          );
        },
      ),
    );
  }
}
