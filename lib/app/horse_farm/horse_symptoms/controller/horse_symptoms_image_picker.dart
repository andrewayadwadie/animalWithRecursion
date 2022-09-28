import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'horse_get_image_list_controller.dart';

class HorseSymptomsImagePickerController extends GetxController {
  final List<dynamic> symptomsList;
  List<File> imagesList = [];
  List<List<File>> allImagesList = [];
  HorseGetImageListData getImageListDataCtrl = Get.put(HorseGetImageListData());
  HorseSymptomsImagePickerController(this.symptomsList);
  @override
  void onInit() {
    super.onInit();
    addAllImageListData(symptomsList);
  }

  void addAllImageListData(List<dynamic> symptoms) {
    log("HorseGetSymptomsController.symptoms.length ${symptoms.length}");
    for (var i = 0; i < symptoms.length; i++) {
      allImagesList.insert(i, []);
    }
  }

  Future pickImagesFormGallery(int index) async {
    try {
      List<XFile>? imagesFromGallery = await ImagePicker().pickMultiImage(
        maxHeight: 600,
        maxWidth: 600,
        imageQuality: 50,
      );
      for (var i = 0; i < imagesFromGallery!.length; i++) {
        allImagesList[index].add(File(
            imagesFromGallery[i].path != "" ? imagesFromGallery[i].path : ""));
        update();
      }
      getImageListDataCtrl.addAllImageListData(allImagesList);
    } on PlatformException catch (e) {
      log("failed pick image $e");
    }
  }
}
