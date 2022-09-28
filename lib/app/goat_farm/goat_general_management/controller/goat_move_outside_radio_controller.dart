

import 'package:get/get.dart';
 
enum GoatMoveOutside { yes, no,noAnswer }

class GoatMoveOutsideController extends GetxController{
  GoatMoveOutside charcter = GoatMoveOutside.noAnswer;

  void onChange(GoatMoveOutside value){
    charcter = value;
    update();
  }

}