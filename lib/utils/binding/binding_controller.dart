import 'package:get/get.dart';

import '../controller/click_controller.dart';

class IntialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClickController>(() => ClickController(),fenix: true);
}
}