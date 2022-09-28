

import 'package:get/get.dart';
 
enum MiscarriageExist { yes, no }

class MiscarriageExistController extends GetxController{
  MiscarriageExist charcter = MiscarriageExist.yes;

  void onChange(MiscarriageExist value){
    charcter = value;
    update();
  }

}