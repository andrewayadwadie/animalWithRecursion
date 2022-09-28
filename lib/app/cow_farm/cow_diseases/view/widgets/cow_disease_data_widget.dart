import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared_widgets/custom_loader.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../controller/cow_get_disease_controller.dart';
import 'cow_disease_textfield_widget.dart';

class CowDiseaseDataWidget extends StatelessWidget {
  const CowDiseaseDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.9,
      width: MediaQuery.of(context).size.height / 4,
      child: GetBuilder<CowGetDiseaseController>(
          init: CowGetDiseaseController(),
          builder: (typeCtrl) {
            return typeCtrl.loading.value == true
                ? const LoaderWidget()
                : ListView.builder(
                    itemCount: typeCtrl.disease.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text('${typeCtrl.disease[index].name}'),
                            leading: Checkbox(
                              value: typeCtrl.choices == []
                                  ? false
                                  : typeCtrl.choices[index],
                              onChanged: (val) =>
                                  typeCtrl.changeCheckBox(val, index),
                            ),
                          ),
                          if (typeCtrl.choices[index] == true)
                            //! modal bottom sheet of immunizaion
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              height: MediaQuery.of(context).size.height / 8,
                              child: ListView(
                                children: [
                                  LabelWidget(
                                      label:
                                          "How Many case of this Disease ?".tr),
                                  CowDiseaseTextFieldWidget(
                                      controller: typeCtrl.textEditCtrl[index],
                                      title: "Count of cases".tr,
                                      onNoteChange: (val) {
                                        //   diseaseWay.add( val??"");
                                      }),
                                ],
                              ),
                            ),
                        ],
                      );
                    });
          }),
    );
  }
}
