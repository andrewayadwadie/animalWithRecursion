import 'dart:io';

import 'package:get/get.dart';

class SheepGetImageListData extends GetxController {
  List<List<File>> allImagesList = [];
  void addAllImageListData(List<List<File>> imageList) {
    allImagesList = imageList;
    update();
  }
}
