import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/controller/app_lang_controller.dart';
import '../../../utils/style.dart';
import 'widgets/drawer_header_widget.dart';
import 'widgets/drawer_item_widget.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: whiteColor,
      child: GetBuilder<AppLanguage>(
          init: AppLanguage(),
          builder: (lang) {
            return ListView(children: [
              DrawerHeaderWidget(
                title: 'Livestock Project'.tr,
                subTitle: 'Saudi Ministry of Agriculture'.tr,
                logoPath: "assets/images/logo.png",
              ),
              InkWell(
                  onTap: () {
                    lang.changeLanguage("ar");
                    Get.updateLocale(const Locale("ar"));
                    Get.back();
                  },
                  child: DrawerItemWidget(
                    title: 'arabic language'.tr,
                    icon: Icons.translate,
                  )),
              InkWell(
                  onTap: () {
                    lang.changeLanguage("en");
                    Get.updateLocale(const Locale("en"));
                    Get.back();
                  },
                  child: DrawerItemWidget(
                    title: 'english language'.tr,
                    icon: Icons.translate,
                  )),
            ]);
          }),
    );
  }
}
