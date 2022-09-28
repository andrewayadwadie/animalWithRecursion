
import 'package:get/get.dart';
 
enum CowFeeder { apostasy, barley , mayez, preparedFeed }

class CowFeederController extends GetxController{
  CowFeeder charcter = CowFeeder.apostasy;

  void onChange(CowFeeder value){
    charcter = value;
    update();
  }

}