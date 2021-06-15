

import 'package:get/get.dart';

class BuyACarTimelineController extends GetxController {

  var timeline_steps = 1.obs;

  updateTimeline (value) {

    timeline_steps.value = value;
  }


}