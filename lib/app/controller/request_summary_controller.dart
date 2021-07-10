import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RequestSummaryController extends GetxController {
    RxBool editable = true.obs;

    void toggleEditable() { editable.value = !editable.value; print(editable.value); }
}
