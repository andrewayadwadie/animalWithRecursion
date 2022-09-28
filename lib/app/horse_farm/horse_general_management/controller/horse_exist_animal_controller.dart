
import 'package:get/get.dart';
 
enum HorseAnimalExist { yes, no,noAnswer }

class HorseAnimalExistController extends GetxController{
  HorseAnimalExist charcter = HorseAnimalExist.noAnswer;

  void onChange(HorseAnimalExist value){
    charcter = value;
    update();
  }

}