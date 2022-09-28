import 'package:get/get.dart';

class SheepFeedTypeCheckboxController extends GetxController {
  SheepFeedTypeCheckboxController({
    required this.choices,
  });
  final List<String> choices;
  @override
  void onInit() {
    super.onInit();

    addListOfChoices(choices);
  }

  List<bool> choicesBoolList = [];

  void addListOfChoices(List<String> choices) {
    for (var i = 0; i < choices.length; i++) {
      choicesBoolList.add(false);
    }
  }

  void onChange(bool? value, int index) {
    choicesBoolList[index] = value ?? false;

    update();
  }
}
