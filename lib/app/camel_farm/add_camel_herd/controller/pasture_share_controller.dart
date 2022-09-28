
import 'package:get/get.dart';
 
enum PastureShare { yes, no }

class PastureShareController extends GetxController{
  PastureShare charcter = PastureShare.yes;

  void onChange(PastureShare value){
    charcter = value;
    update();
  }

}