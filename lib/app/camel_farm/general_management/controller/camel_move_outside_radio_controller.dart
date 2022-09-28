

import 'package:get/get.dart';
 
enum CamelMoveOutside { yes, no,noAnswer }

class CamelMoveOutsideController extends GetxController{
  CamelMoveOutside charcter = CamelMoveOutside.noAnswer;

  void onChange(CamelMoveOutside value){
    charcter = value;
    update();
  }

}