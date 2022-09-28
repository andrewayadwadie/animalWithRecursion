import 'package:get/get.dart';

class CamelOPertionalTextFieldController extends GetxController {
  String bathedNo = "";
  String floorCleanNo = "";
  String watererCleanNo = "";
  String farmWaste = "";
  String deadAnimal = "";
  String milkerCleanNo = "";
  String milkerToolsCleanNo = "";
  String animalInfected = "";
  String antibioticGiven = "";

  void onChangeBathedNo(String value) {
    bathedNo = value;
    update();
  }

  void onChangefloorCleanNo(String value) {
    floorCleanNo = value;
    update();
  }

  void onChangewatererCleanNo(String value) {
    watererCleanNo = value;
    update();
  }

  void onChangefarmWaste(String value) {
    farmWaste = value;
    update();
  }

  void onChangedeadAnimal(String value) {
    deadAnimal = value;
    update();
  }

  void onChangemilkerCleanNo(String value) {
    milkerCleanNo = value;
    update();
  }

  void onChangemilkerToolsCleanNo(String value) {
    milkerToolsCleanNo = value;
    update();
  }

  void onChangeanimalInfected(String value) {
    animalInfected = value;
    update();
  }

  void onChangeantibioticGiven(String value) {
    antibioticGiven = value;
    update();
  }
}
