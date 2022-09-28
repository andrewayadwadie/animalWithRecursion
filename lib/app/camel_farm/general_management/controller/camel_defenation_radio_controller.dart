

import 'package:get/get.dart';
 
enum CamelDefenation { yes, no ,noAnswer }

class CamelDefenationController extends GetxController{
  CamelDefenation charcter = CamelDefenation.noAnswer;

  void onChange(CamelDefenation value){
    charcter = value;
    update();
  }

}