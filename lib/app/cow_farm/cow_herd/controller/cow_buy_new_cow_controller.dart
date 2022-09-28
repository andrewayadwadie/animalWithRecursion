
import 'package:get/get.dart';
 
enum CowBuyNewCow { yes, no }

class CowBuyNewCowController extends GetxController{
  CowBuyNewCow charcter = CowBuyNewCow.yes;

  void onChange(CowBuyNewCow value){
    charcter = value;
    update();
  }

}