import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../utils/controller/click_controller.dart';
import '../../../../utils/controller/internet_connectivity_controller.dart';
import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../../utils/style.dart';
import '../../../add_new_farm/view/screen/general_info_screen.dart';
import '../../../auth/login_screen.dart';
import '../../../shared_widgets/custom_loader.dart';
import '../../../shared_widgets/label_widget.dart';
import '../../controller/farm_owner_form_controller.dart';
import '../../services/send_data_service.dart';

// ignore: must_be_immutable
class FarmOwnerFormWidget extends StatelessWidget {
  FarmOwnerFormWidget({
    Key? key,
    required this.farmOwnerKey,
  }) : super(key: key);
  final GlobalKey<FormState> farmOwnerKey;
  ClickController click = Get.find<ClickController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FarmOwnerFormController>(
        init: FarmOwnerFormController(),
        builder: (ctrl) {
          return Form(
              key: farmOwnerKey,
              child: Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.42,
                    child: ListView(
                      //    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //!name
                        LabelWidget(label: "name : ".tr),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 10.0),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 2, color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: greyColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: "name : ".tr,
                            ),
                            textInputAction: TextInputAction.next,
                            onSaved: (val) {
                              ctrl.name = val ?? "";
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'please enter farm owner name ';
                              } else if (value.runtimeType == int) {
                                return 'please enter farm owner name with text value  ';
                              } else if (value.length > 30) {
                                return 'sorry name must be less than 30 characters  ';
                              }
                              return null;
                            }, // enabledBorder: InputBorder.none,
                          ),
                        ),
                        //!phone
                        LabelWidget(label: "phone Number : ".tr),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 10.0),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 2, color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: greyColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: "phone Number : ".tr,
                            ),
                            textInputAction: TextInputAction.next,
                            onSaved: (val) {
                              ctrl.phone =
                                  val == "" ? 0 : int.parse(val ?? "0");
                            },
                            validator: (value) {
                              // if (value!.isEmpty) {
                              //   return 'please enter farm owner phone number ';
                              // }
                              //  else if (value.runtimeType == String) {
                              //   return 'phone can not be text value  ';
                              // }
                              if (value!.length > 12) {
                                return 'sorry phone number must be 11 number ';
                              }
                              return null;
                            }, // enabledBorder: InputBorder.none,
                          ),
                        ),
                        //!email
                        LabelWidget(label: "email : ".tr),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 10.0),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 2, color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: greyColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: "email : ".tr,
                            ),
                            textInputAction: TextInputAction.next,
                            onSaved: (val) {
                              ctrl.email = val ?? "";
                            },
                            validator: (value) {
                              if (value!.isNotEmpty) {
                                if (!value.contains("@") ||
                                    !value.contains(".")) {
                                  return 'please enter valid email ';
                                } else if (value.length > 30) {
                                  return 'sorry email must be less than 30 characters  ';
                                }
                              }
                              return null;
                            }, // enabledBorder: InputBorder.none,
                          ),
                        ),
                        //!address
                        LabelWidget(label: "address : ".tr),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5),
                          child: TextFormField(
                            keyboardType: TextInputType.streetAddress,
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 10.0),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 2, color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: greyColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: "address : ".tr,
                            ),
                            textInputAction: TextInputAction.next,
                            onSaved: (val) {
                              ctrl.address = val ?? "";
                            },
                            // enabledBorder: InputBorder.none,
                          ),
                        ),
                        //!identification Number
                        LabelWidget(label: "identification Number : ".tr),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 10.0),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 2, color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: greyColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              hintText: "identification Number : ".tr,
                            ),
                            textInputAction: TextInputAction.done,

                            onSaved: (val) {
                              ctrl.id = val == "" ? 0 : int.parse(val ?? "0");
                            },
                            validator: (value) {
                              if (value!.length > 14) {
                                return 'sorry identification number must be 14 number ';
                              }
                              return null;
                            }, // enabledBorder: InputBorder.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //!Next & Save Button
                  Align(
                      alignment: Get.locale == const Locale('en')
                          ? Alignment.bottomRight
                          : Alignment.bottomLeft,
                      child: GetBuilder<InternetController>(
                          init: InternetController(),
                          builder: (net) {
                            return InkWell(
                                onTap: () async {
                                  if (farmOwnerKey.currentState!.validate()) {
                                    farmOwnerKey.currentState!.save();
                                    net.checkInternet().then((value) {
                                      if (value) {
                                        if (click.ownerClick == false) {
                                          SendOwnerData.sendOwnerData(
                                                  name: ctrl.name ?? "",
                                                  phone: ctrl.phone ?? 0,
                                                  email: ctrl.email ?? "",
                                                  address: ctrl.address ?? "",
                                                  id: ctrl.id ?? 0)
                                              .then((res) {
                                            if (res.runtimeType == double) {
                                              SharedPreferencesHelper
                                                  .setOwnerValue(res.toInt());
                                              log(" farm id = ${SharedPreferencesHelper.getOwnerValue()}");
                                              SharedPreferencesHelper
                                                  .setOwnerNameValue(
                                                      ctrl.name ?? "");

                                              Get.to(() => GeneralInfoScreen(
                                                  farmOwnerId:
                                                      SharedPreferencesHelper
                                                          .getOwnerValue()));
                                            } else if (res == 401) {
                                              Get.offAll(const LoginScreen());
                                            } else if (res == 500) {
                                              Get.snackbar(
                                                'Error',
                                                'Server Error',
                                                backgroundColor: Colors.red,
                                                colorText: Colors.white,
                                                icon: const Icon(
                                                  Icons.error,
                                                  color: Colors.white,
                                                ),
                                              );
                                              click.changeOwnerClick();
                                            }

                                            //! error
                                            else if (res.runtimeType ==
                                                String) {
                                              Get.snackbar(
                                                'Error',
                                                "there are problem ,can't send data.",
                                                backgroundColor: Colors.red,
                                                colorText: Colors.white,
                                                icon: const Icon(
                                                  Icons.error,
                                                  color: Colors.white,
                                                ),
                                              );
                                              click.changeOwnerClick();
                                            }
                                          });
                                          click.changeOwnerClick();
                                        }
                                      }
                                    });
                                  }
                                },
                                child: click.ownerClick == false
                                    ? Get.locale == const Locale('ar')
                                        ? SizedBox(
                                            child: SvgPicture.asset(
                                            "assets/icons/add-ar.svg",
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                10,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                10,
                                          ))
                                        : SizedBox(
                                            child: SvgPicture.asset(
                                            "assets/icons/add-en.svg",
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                10,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                10,
                                          ))
                                    : const LoaderWidget());
                          })),
                ],
              ));
        });
  }
}
