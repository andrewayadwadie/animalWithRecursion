
import 'package:get/get.dart';
 
enum CamelAnimalExist { yes, no,noAnswer }

class CamelAnimalExistController extends GetxController{
  CamelAnimalExist charcter = CamelAnimalExist.noAnswer;

  void onChange(CamelAnimalExist value){
    charcter = value;
    update();
  }

}