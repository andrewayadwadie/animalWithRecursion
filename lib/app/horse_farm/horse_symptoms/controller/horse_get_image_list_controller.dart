import 'dart:io';

import 'package:get/get.dart';

class HorseGetImageListData extends GetxController {
  List<List<File>> allImagesList = [];
  void addAllImageListData(List<List<File>> imageList) {
    allImagesList = imageList;
    update();
  }
}
