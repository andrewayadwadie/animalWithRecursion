

import 'package:get/get.dart';
 
enum GoatNewAnimalBought { yes, no ,noAnswer}

class GoatNewAnimalBoughtController extends GetxController{
  GoatNewAnimalBought charcter = GoatNewAnimalBought.noAnswer;

  void onChange(GoatNewAnimalBought value){
    charcter = value;
    update();
  }

}