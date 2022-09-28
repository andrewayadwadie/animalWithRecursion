import 'package:get/get.dart';

class QuestionRadioController extends GetxController {
  Map<String, int> selectedMap = {};
  void changeValue(int? value, String key) {
    selectedMap[key] = value!;
    update();
  }
}
