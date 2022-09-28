

import 'package:get/get.dart';
 
enum HorseDefenation { yes, no ,noAnswer }

class HorseDefenationController extends GetxController{
  HorseDefenation charcter = HorseDefenation.noAnswer;

  void onChange(HorseDefenation value){
    charcter = value;
    update();
  }

}