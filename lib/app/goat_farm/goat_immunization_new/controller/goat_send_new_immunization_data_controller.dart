import 'package:get/get.dart';

class GoatSendNewImmunizationDataController extends GetxController {
  List<dynamic> answers = [];

  void addAnswer(
      {int immunzationId = 0,
      String date = "",
      immunzationWay = "",
      bool isFullImmunizationProgram = false,
      immunzationGiver = ""}) {
    answers.add({
      "ImmunzationId": immunzationId,
      "Date": date,
      "ImmunzationWay": immunzationWay,
      "IsFullImmunizationProgram": isFullImmunizationProgram,
      "ImmunzationGiver": immunzationGiver
    });
    update();
  }
}
