

import 'package:get/get.dart';
 
enum GoatDefenation { yes, no ,noAnswer }

class GoatDefenationController extends GetxController{
  GoatDefenation charcter = GoatDefenation.noAnswer;

  void onChange(GoatDefenation value){
    charcter = value;
    update();
  }

}