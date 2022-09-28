
import 'package:get/get.dart';
 
enum HorseWithAnimals { yes, no,noAnswer }

class HorseWithAnimalsController extends GetxController{
  HorseWithAnimals charcter = HorseWithAnimals.noAnswer;

  void onChange(HorseWithAnimals value){
    charcter = value;
    update();
  }

}