
import 'package:get/get.dart';
 
enum CamelFeeder { apostasy, barley , mayez, preparedFeed }

class CamelFeederController extends GetxController{
  CamelFeeder charcter = CamelFeeder.apostasy;

  void onChange(CamelFeeder value){
    charcter = value;
    update();
  }

}