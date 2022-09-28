

import 'package:get/get.dart';
 
enum HorseNewAnimalBought { yes, no ,noAnswer}

class HorseNewAnimalBoughtController extends GetxController{
  HorseNewAnimalBought charcter = HorseNewAnimalBought.noAnswer;

  void onChange(HorseNewAnimalBought value){
    charcter = value;
    update();
  }

}