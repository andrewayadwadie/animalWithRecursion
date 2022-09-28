import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/style.dart';
import 'logo_widget.dart';

class HomeScreenHeaderWidget extends StatelessWidget {
  const HomeScreenHeaderWidget({
    Key? key,
    required this.onClick,
  }) : super(key: key);
  final VoidCallback onClick;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 14,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            LogoWidget(imagePath: 'assets/images/logo.png', title: 'Home'.tr),
          InkWell(
            onTap: onClick,
            child: const Icon(Icons.menu,color: primaryColor,size: 35,),
          ),
        ],
      ),
    );
  }
}
