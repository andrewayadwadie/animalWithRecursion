

import 'package:get/get.dart';
 
enum HorseMoveOutside { yes, no,noAnswer }

class HorseMoveOutsideController extends GetxController{
  HorseMoveOutside charcter = HorseMoveOutside.noAnswer;

  void onChange(HorseMoveOutside value){
    charcter = value;
    update();
  }

}