import 'package:flutter/material.dart';

import '../../../utils/style.dart';

class FarmItemWidget extends StatelessWidget {
  const FarmItemWidget({
    Key? key,
    required this.title,
    required this.color,
    // required this.selected,
    required this.imagePath,
    required this.onTap,
  //  required this.onDoubleTap,
  }) : super(key: key);
  final String title;
//final bool selected;
  final Color color;
  final String imagePath;
  final VoidCallback onTap;
//  final VoidCallback onDoubleTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
    //  onDoubleTap: onDoubleTap,
      child: Container(
        width: MediaQuery.of(context).size.width / 4.6,
        height: MediaQuery.of(context).size.height / 10,
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 80),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: const BoxDecoration(),
              child: Image.asset(
                imagePath,
                width: MediaQuery.of(context).size.width / 7,
                height: MediaQuery.of(context).size.height / 10,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                  color: whiteColor, fontSize: 15, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
