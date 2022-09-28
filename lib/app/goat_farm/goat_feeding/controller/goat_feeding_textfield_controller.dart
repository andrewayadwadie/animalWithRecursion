import 'package:get/get.dart';

class GoatFeedingTextfieldController extends GetxController {
  String factoryName = "";

  void onChangefactoryNmae(String value) {
    factoryName = value;
    update();
  }
}
