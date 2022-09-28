
import 'package:get/get.dart';
 
enum GoatPastureShare { yes, no }

class GoatPastureShareController extends GetxController{
  GoatPastureShare charcter = GoatPastureShare.yes;

  void onChange(GoatPastureShare value){
    charcter = value;
    update();
  }

}