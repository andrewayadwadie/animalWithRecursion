import 'package:get/get.dart';

class CamelHealthPractciesTextFieldController extends GetxController {
  String visitorCloths = "";
  String workerscloths = "";
  String farmDistance = "";
  String waterDistance = "";
  String treesDistance = "";
  String roadsDistance = "";
  String citiesDistance = "";

  void onChangevisitorCloths(String value) {
    visitorCloths = value;
    update();
  }

  void onChangeworkerscloths(String value) {
    workerscloths = value;
    update();
  }

  void onChangefarmDistance(String value) {
    farmDistance = value;
    update();
  }

  void onChangewaterDistance(String value) {
    waterDistance = value;
    update();
  }

  void onChangetreesDistance(String value) {
    treesDistance = value;
    update();
  }

  void onChangeroadsDistance(String value) {
    roadsDistance = value;
    update();
  }

  void onChangecitiesDistance(String value) {
    citiesDistance = value;
    update();
  }
}
