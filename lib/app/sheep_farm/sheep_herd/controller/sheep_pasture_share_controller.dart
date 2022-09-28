
import 'package:get/get.dart';
 
enum SheepPastureShare { yes, no }

class SheepPastureShareController extends GetxController{
  SheepPastureShare charcter = SheepPastureShare.yes;

  void onChange(SheepPastureShare value){
    charcter = value;
    update();
  }

}