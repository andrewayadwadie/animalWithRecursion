
import 'package:get/get.dart';
 
enum SheepBuyNewSheep { yes, no }

class SheepBuyNewSheepController extends GetxController{
  SheepBuyNewSheep charcter = SheepBuyNewSheep.yes;

  void onChange(SheepBuyNewSheep value){
    charcter = value;
    update();
  }

}