import 'package:get/get.dart';

class SheepReproductionTextFieldController extends GetxController {
  String importingCounrty = "";
  String caseNoDifficulty = "";
  String caseNoAboration = "";
  String caseNoLabor = "";

  void onChangeImportingCounrty(String value) {
    importingCounrty = value;
    update();
  }

  void onChangeCaseNoDifficulty(String value) {
    caseNoDifficulty = value;
    update();
  }

  void onChangeCaseNoAboration(String value) {
    caseNoAboration = value;
    update();
  }

  void onChangeCaseNoLabor(String value) {
    caseNoLabor = value;
    update();
  }
}
