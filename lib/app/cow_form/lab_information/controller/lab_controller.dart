import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LabController extends GetxController {
  List samples = [].obs;
  late List<TextEditingController> textEditList = <TextEditingController>[];

  void addSample(int index, {String? sample}) {
    samples[index]["sample"] = sample;
    textEditList[index].value.text == sample;
    update();
  }

  void increaseList() {
    samples.add({"sample": ""});
    textEditList.add(TextEditingController());

    update();
  }

  void decreaseList(index) {
    samples.removeAt(index);
    textEditList.removeAt(index);

    update();
  }
}
