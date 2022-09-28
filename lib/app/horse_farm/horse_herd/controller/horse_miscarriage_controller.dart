

import 'package:get/get.dart';
 
enum HorseMiscarriageExist { yes, no }

class HorseMiscarriageExistController extends GetxController{
  HorseMiscarriageExist charcter = HorseMiscarriageExist.yes;

  void onChange(HorseMiscarriageExist value){
    charcter = value;
    update();
  }

}