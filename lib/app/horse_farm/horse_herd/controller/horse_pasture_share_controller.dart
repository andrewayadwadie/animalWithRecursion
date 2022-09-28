
import 'package:get/get.dart';
 
enum HorsePastureShare { yes, no }

class HorsePastureShareController extends GetxController{
  HorsePastureShare charcter = HorsePastureShare.yes;

  void onChange(HorsePastureShare value){
    charcter = value;
    update();
  }

}