
import 'package:get/get.dart';
 
enum CamelsAndAnotherCamels { yes, no }

class CamelsAndAnotherCamelsController extends GetxController{
  CamelsAndAnotherCamels charcter = CamelsAndAnotherCamels.yes;

  void onChange(CamelsAndAnotherCamels value){
    charcter = value;
    update();
  }

}