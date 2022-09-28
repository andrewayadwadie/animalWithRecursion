
import 'package:get/get.dart';
 
enum HorseFeeder { apostasy, barley , mayez, preparedFeed }

class HorseFeederController extends GetxController{
  HorseFeeder charcter = HorseFeeder.apostasy;

  void onChange(HorseFeeder value){
    charcter = value;
    update();
  }

}