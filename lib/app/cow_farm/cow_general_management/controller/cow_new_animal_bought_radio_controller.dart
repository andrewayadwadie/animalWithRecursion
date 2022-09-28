

import 'package:get/get.dart';
 
enum CowNewAnimalBought { yes, no ,noAnswer}

class CowNewAnimalBoughtController extends GetxController{
  CowNewAnimalBought charcter = CowNewAnimalBought.noAnswer;

  void onChange(CowNewAnimalBought value){
    charcter = value;
    update();
  }

}