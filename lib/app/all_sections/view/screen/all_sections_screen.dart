import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../utils/db/auth_shared_preferences.dart';
import '../../../../utils/style.dart';
import '../../../animal_type/view/screen/animal_type_screen.dart';
import '../../../home/home_screen.dart';
import '../../../shared_widgets/custom_appbar_title.dart';
import '../widget/section_list_widget.dart';

class AllSectionScreen extends StatelessWidget {
  const AllSectionScreen({Key? key, required this.animalId}) : super(key: key);
  final int animalId;
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
              onPressed: () => Get.offAll(HomeScreen()),
              icon: const Icon(Icons.home),
              color: primaryColor,
            ),
            title: const AppBarTitle(),
            actions: [
              TextButton(
                  onPressed: () {
                    SharedPreferencesHelper.clear();
                    SharedPreferencesHelper.clearOwner();
                    SharedPreferencesHelper.clearOwnerName();
                    SharedPreferencesHelper.clearAnimalType();
                    SharedPreferencesHelper.clearCamelHerd();
                    SharedPreferencesHelper.clearCowHerd();
                    SharedPreferencesHelper.clearCamelStatus();
                    SharedPreferencesHelper.clearCowStatus();
                    SharedPreferencesHelper.clearSheepStatus();
                    SharedPreferencesHelper.clearGoatHerd();
                    SharedPreferencesHelper.clearGoatStatus();
                    SharedPreferencesHelper.clearSheepHerd();
                    SharedPreferencesHelper.clearHorseHerd();
                    SharedPreferencesHelper.clearHorseStatus();
                    Get.offAll(() => HomeScreen());
                  },
                  child: Text(
                    'finish'.tr,
                    style: const TextStyle(
                        color: redColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
          body: Stack(
            children: [
              //! animal type List
              Align(
                alignment: Alignment.topCenter,
                child: SectionListWidget(
                  animalId: animalId,
                ),
              ),
              Align(
                alignment: Get.locale == const Locale('en')
                    ? Alignment.bottomLeft
                    : Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    Get.offAll(const AnimalTypeScreen());
                  },
                  child: Get.locale == const Locale('en')
                      ? SvgPicture.asset(
                          "assets/icons/prev-en.svg",
                          width: MediaQuery.of(context).size.width / 13,
                          height: MediaQuery.of(context).size.height / 13,
                        )
                      : SvgPicture.asset(
                          "assets/icons/prev-ar.svg",
                          width: MediaQuery.of(context).size.width / 13,
                          height: MediaQuery.of(context).size.height / 13,
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
