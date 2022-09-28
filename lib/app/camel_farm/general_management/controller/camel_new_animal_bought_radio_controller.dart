

import 'package:get/get.dart';
 
enum CamelNewAnimalBought { yes, no ,noAnswer}

class CamelNewAnimalBoughtController extends GetxController{
  CamelNewAnimalBought charcter = CamelNewAnimalBought.noAnswer;

  void onChange(CamelNewAnimalBought value){
    charcter = value;
    update();
  }

}