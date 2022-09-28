
import 'package:get/get.dart';
 
enum SheepFeeder { apostasy, barley , mayez, preparedFeed }

class SheepFeederController extends GetxController{
  SheepFeeder charcter = SheepFeeder.apostasy;

  void onChange(SheepFeeder value){
    charcter = value;
    update();
  }

}