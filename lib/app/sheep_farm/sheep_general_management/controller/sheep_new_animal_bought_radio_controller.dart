

import 'package:get/get.dart';
 
enum SheepNewAnimalBought { yes, no ,noAnswer}

class SheepNewAnimalBoughtController extends GetxController{
  SheepNewAnimalBought charcter = SheepNewAnimalBought.noAnswer;

  void onChange(SheepNewAnimalBought value){
    charcter = value;
    update();
  }

}