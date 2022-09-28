import 'package:get/get.dart';

enum ExitAnimalLastWeek { yes, no, noAnswer }

class ExitAnimalLastWeekController extends GetxController {
  ExitAnimalLastWeek charcter = ExitAnimalLastWeek.noAnswer;

  void onChange(ExitAnimalLastWeek value) {
    charcter = value;
    update();
  }
}
