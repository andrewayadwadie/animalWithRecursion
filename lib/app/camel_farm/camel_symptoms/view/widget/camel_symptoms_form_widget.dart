// ignore_for_file: deprecated_member_use

import 'package:animal_wealth/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'camel_symptoms_data_widget.dart';
 
class CamelSymptomsFormWidget extends StatelessWidget {
  const CamelSymptomsFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: MediaQuery.of(context).size.height / 1.2,
        child: ListView(
          children:  [
             Padding(
               padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width / 50),
               child:   Text(
                "What kind of Symptomss in the Farm ?".tr,
                style: const TextStyle(
                  color: primaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
            ),
             ),
              const CamelsymptomsDataWidget()
          ],
        ),
      ),
     
    ]);
  }
}
