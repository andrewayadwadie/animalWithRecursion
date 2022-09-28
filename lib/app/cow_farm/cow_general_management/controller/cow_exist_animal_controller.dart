
import 'package:get/get.dart';
 
enum CowAnimalExist { yes, no,noAnswer }

class CowAnimalExistController extends GetxController{
  CowAnimalExist charcter = CowAnimalExist.noAnswer;

  void onChange(CowAnimalExist value){
    charcter = value;
    update();
  }

}