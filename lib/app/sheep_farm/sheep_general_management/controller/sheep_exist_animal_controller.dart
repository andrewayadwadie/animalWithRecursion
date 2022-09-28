
import 'package:get/get.dart';
 
enum SheepAnimalExist { yes, no,noAnswer }

class SheepAnimalExistController extends GetxController{
  SheepAnimalExist charcter = SheepAnimalExist.noAnswer;

  void onChange(SheepAnimalExist value){
    charcter = value;
    update();
  }

}