

import 'package:get/get.dart';
 
enum CowMoveOutside { yes, no,noAnswer }

class CowMoveOutsideController extends GetxController{
  CowMoveOutside charcter = CowMoveOutside.noAnswer;

  void onChange(CowMoveOutside value){
    charcter = value;
    update();
  }

}