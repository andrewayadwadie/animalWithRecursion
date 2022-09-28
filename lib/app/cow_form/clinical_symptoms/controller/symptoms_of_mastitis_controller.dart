
import 'package:get/get.dart';

class SymptomsOfMastitisController extends GetxController {
  bool anorexia = false;
  bool temperaturerise = false;
  bool lackOfmilkproduction = false;
  bool udderRedness = false;


  void anorexiaonChange(bool? value) {
    anorexia = value ?? false;

    update();
  }
  void temperatureriseOnChange(bool? value) {
    temperaturerise = value ?? false;

    update();
  }
  void lackOfmilkproductiononChange(bool? value) {
    lackOfmilkproduction = value ?? false;

    update();
  }
  void udderRednessonChange(bool? value) {
    udderRedness = value ?? false;

    update();
  }

 
}
