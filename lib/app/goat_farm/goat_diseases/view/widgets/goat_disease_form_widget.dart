// ignore_for_file: deprecated_member_use

import 'package:animal_wealth/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'goat_disease_data_widget.dart';

class GoatDiseaseFormWidget extends StatelessWidget {
  const GoatDiseaseFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: MediaQuery.of(context).size.height / 1.2,
        child: ListView(
          children: [
            Text(
              "What kind of Diseases in the Farm ?".tr,
              style: const TextStyle(
                color: primaryColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const GoatDiseaseDataWidget()
          ],
        ),
      ),
    ]);
  }
}
