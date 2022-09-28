import 'package:get/get.dart';

enum AddAnimalTwoWeek { yes, no, noAnswer }

class AddAnimalTwoWeekController extends GetxController {
  AddAnimalTwoWeek charcter = AddAnimalTwoWeek.noAnswer;

  void onChange(AddAnimalTwoWeek value) {
    charcter = value;
    update();
  }
}
