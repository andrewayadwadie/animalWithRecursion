import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/style.dart';
import '../widgets/farm_owner_form_widget.dart';

class FarmOwnerScreen extends StatelessWidget {
  FarmOwnerScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: offwhiteColor,
          appBar: AppBar(
            backgroundColor: whiteColor,
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_ios),
              color: primaryColor,
            ),
            title: Center(
              child: Text(
                'New Farm'.tr,
                style: const TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              //!Farm owner Title
              Center(
                child: Text(
                  "Farm Owner".tr,
                  style: const TextStyle(
                    color: primaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 35,
              ),
              //!farm Owner Body
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.08,
                  height: MediaQuery.of(context).size.height / 1.3,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: Get.locale == const Locale("en")
                          ? const BorderRadius.only(
                              topRight: Radius.circular(20))
                          : const BorderRadius.only(
                              topLeft: Radius.circular(20))),
                  child: FarmOwnerFormWidget(farmOwnerKey: _formKey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
