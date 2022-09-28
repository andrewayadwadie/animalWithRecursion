import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/style.dart';
import '../home/home_screen.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: whiteColor,
      leading: IconButton(
        onPressed: () => Get.offAll(HomeScreen()),
        icon: const Icon(Icons.home),
        color: primaryColor,
      ),
      title:   Center(
        child: Text(
          'New Farm'.tr,
          style: const TextStyle(
              color: primaryColor, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
