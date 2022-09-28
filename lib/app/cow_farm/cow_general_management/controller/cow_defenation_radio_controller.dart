

import 'package:get/get.dart';
 
enum CowDefenation { yes, no ,noAnswer }

class CowDefenationController extends GetxController{
  CowDefenation charcter = CowDefenation.noAnswer;

  void onChange(CowDefenation value){
    charcter = value;
    update();
  }

}