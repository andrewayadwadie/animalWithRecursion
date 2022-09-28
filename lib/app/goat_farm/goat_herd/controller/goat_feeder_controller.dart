
import 'package:get/get.dart';
 
enum GoatFeeder { apostasy, barley , mayez, preparedFeed }

class GoatFeederController extends GetxController{
  GoatFeeder charcter = GoatFeeder.apostasy;

  void onChange(GoatFeeder value){
    charcter = value;
    update();
  }

}