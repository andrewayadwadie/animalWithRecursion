
import 'package:get/get.dart';
 
enum SheepAndAnotherSheep { yes, no }

class SheepAndAnotherSheepController extends GetxController{
  SheepAndAnotherSheep charcter = SheepAndAnotherSheep.yes;

  void onChange(SheepAndAnotherSheep value){
    charcter = value;
    update();
  }

}