
import 'package:get/get.dart';
 
enum BuyNewCaml { yes, no }

class BuyNewCamlController extends GetxController{
  BuyNewCaml charcter = BuyNewCaml.yes;

  void onChange(BuyNewCaml value){
    charcter = value;
    update();
  }

}