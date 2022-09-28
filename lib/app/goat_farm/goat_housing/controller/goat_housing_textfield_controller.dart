import 'package:get/get.dart';

class GoatHousingTextFieldController extends GetxController {
  String barnsNo = "";
  String barnArea = "";
  String animalBarn = "";
  String wateringNo = "";
  String feedsNo = "";
  String regimenfeedsNo = "";
  String drinkNo = "";


  void onChangeBarnsNo(String value) {
    barnsNo = value;
    update();
  }

  void onChangeBarnArea(String value) {
    barnArea = value;
    update();
  }

  void onChangeAnimalBarn(String value) {
    animalBarn = value;
    update();
  }

  void onChangeWateringNo(String value) {
    wateringNo = value;
    update();
  }

  void onChangefeedsNo(String value) {
    feedsNo = value;
    update();
  }
  
  void onChangedrinkNo(String value) {
    drinkNo = value;
    update();
  }

 void onChangeRegimenfeedsNo(String value){
    regimenfeedsNo = value;
    update();
 }
}
