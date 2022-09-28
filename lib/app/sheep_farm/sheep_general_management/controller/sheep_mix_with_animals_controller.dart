
import 'package:get/get.dart';
 
enum SheepWithAnimals { yes, no,noAnswer }

class SheepWithAnimalsController extends GetxController{
  SheepWithAnimals charcter = SheepWithAnimals.noAnswer;

  void onChange(SheepWithAnimals value){
    charcter = value;
    update();
  }

}