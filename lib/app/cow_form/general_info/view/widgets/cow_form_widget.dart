import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';
import '../../../../shared_widgets/label_widget.dart';
import '../../../Immunization/view/screen/immunization_screen.dart';
import '../../controller/date_picker_controller.dart';

class CowFormWidget extends StatelessWidget {
  CowFormWidget({
    Key? key,
  }) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.42,
              child: ListView(
                //    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //!dynasty
                  const LabelWidget(label: "dynasty : "),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 2, color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: greyColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          // icon: const Icon(
                          //   Icons.person_outline_sharp,
                          //   color: secondaryColor,
                          //   size: 30,
                          // ),
                          labelText: 'dynasty'.tr,
                          hintText: 'dynasty'.tr,
                          labelStyle: const TextStyle(
                              height: 1.1,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)
                          //enabledBorder: InputBorder.none
                          ),
                      textInputAction: TextInputAction.next,
                      onSaved: (val) {},
                      validator: (value) {
                        return null;
                      }, // enabledBorder: InputBorder.none,
                    ),
                  ),
                  //!number of males
                  const LabelWidget(label: "number of males: "),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 2, color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: greyColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          // icon: const Icon(
                          //   Icons.phone_android,
                          //   color: secondaryColor,
                          //   size: 30,
                          // ),
                          labelText: 'number of males',
                          hintText: 'number of males',
                          labelStyle: const TextStyle(
                              height: 1.1,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)
                          //enabledBorder: InputBorder.none
                          ),
                      textInputAction: TextInputAction.next,
                      onSaved: (val) {},
                      validator: (value) {
                        return null;
                      }, // enabledBorder: InputBorder.none,
                    ),
                  ),
                  //!number of females
                  const LabelWidget(label: "number of females : "),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 2, color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: greyColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          // icon: const Icon(
                          //   Icons.mail,
                          //   color: secondaryColor,
                          //   size: 30,
                          // ),
                          labelText: 'number of females',
                          hintText: 'number of females',
                          labelStyle: const TextStyle(
                              height: 1.1,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)
                          //enabledBorder: InputBorder.none
                          ),
                      textInputAction: TextInputAction.next,
                      onSaved: (val) {},
                      validator: (value) {
                        return null;
                      }, // enabledBorder: InputBorder.none,
                    ),
                  ),
                  //!fodder
                  const LabelWidget(label: "fodder : "),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 2, color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: greyColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          // icon: const Icon(
                          //   Icons.location_on,
                          //   color: secondaryColor,
                          //   size: 30,
                          // ),
                          labelText: 'fodder',
                          hintText: 'fodder',
                          labelStyle: const TextStyle(
                              height: 1.1,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)
                          //enabledBorder: InputBorder.none
                          ),
                      textInputAction: TextInputAction.next,
                      onSaved: (val) {},
                      validator: (value) {
                        return null;
                      }, // enabledBorder: InputBorder.none,
                    ),
                  ),
                  //!weight
                  const LabelWidget(label: "weight : "),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 2, color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: greyColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          // icon: const Icon(
                          //   Icons.badge_outlined,
                          //   color: secondaryColor,
                          //   size: 30,
                          // ),
                          labelText: 'weight',
                          hintText: 'weight',
                          labelStyle: const TextStyle(
                              height: 1.1,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)
                          //enabledBorder: InputBorder.none
                          ),
                      textInputAction: TextInputAction.done,
                      onSaved: (val) {},
                      validator: (value) {
                        return null;
                      }, // enabledBorder: InputBorder.none,
                    ),
                  ),

                  GetBuilder<DateController>(
                      init: DateController(),
                      builder: (dateCtrl) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const LabelWidget(
                                label: "date of epidemiological survey : "),
                            CupertinoButton(
                                child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    alignment: Alignment.center,
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      "${dateCtrl.date.year}-${dateCtrl.date.month}-${dateCtrl.date.day} ",
                                      style: const TextStyle(color: whiteColor),
                                    )),
                                onPressed: () =>
                                    dateCtrl.onDateChange(context)),
                          ],
                        );
                      }),

                  //*space
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                ],
              ),
            ),
            //!Next & Save Button
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {
                  Get.to(const ImmunizationScreen());
                },
                child: Get.locale == const Locale('ar')
                    ? SvgPicture.asset(
                        "assets/icons/add-ar.svg",
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.height / 10,
                      )
                    : SvgPicture.asset(
                        "assets/icons/add-en.svg",
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.height / 10,
                      ),
              ),
            ),
          ],
        ));
  }
}
