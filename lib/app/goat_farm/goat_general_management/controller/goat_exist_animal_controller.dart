
import 'package:get/get.dart';
 
enum GoatAnimalExist { yes, no,noAnswer }

class GoatAnimalExistController extends GetxController{
  GoatAnimalExist charcter = GoatAnimalExist.noAnswer;

  void onChange(GoatAnimalExist value){
    charcter = value;
    update();
  }

}