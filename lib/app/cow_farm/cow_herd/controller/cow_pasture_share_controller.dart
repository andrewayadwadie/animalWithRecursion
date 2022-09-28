
import 'package:get/get.dart';
 
enum CowPastureShare { yes, no }

class CowPastureShareController extends GetxController{
  CowPastureShare charcter = CowPastureShare.yes;

  void onChange(CowPastureShare value){
    charcter = value;
    update();
  }

}