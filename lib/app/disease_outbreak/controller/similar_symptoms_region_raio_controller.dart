import 'package:get/get.dart';

enum SimilarSymptomsRegion { yes, no, noAnswer }

class SimilarSymptomsRegionController extends GetxController {
  SimilarSymptomsRegion charcter = SimilarSymptomsRegion.noAnswer;

  void onChange(SimilarSymptomsRegion value) {
    charcter = value;
    update();
  }
}
