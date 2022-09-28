import 'package:flutter/material.dart';

import '../../../../utils/style.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 13,
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            icon,
            color: darkColor,
            size: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 25,
          ),
          Text(
            title,
            style: const TextStyle(
                color: darkColor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward,
            color: darkColor,
            size: 30,
          ),
        ],
      ),
    );
  }
}
