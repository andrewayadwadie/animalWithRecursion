import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../utils/style.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget(
      {Key? key, required this.title, required this.image, required this.onTap})
      : super(key: key);
  final String title;
  final String image;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height / 12,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height / 55,
            horizontal: MediaQuery.of(context).size.width / 55),
        decoration: BoxDecoration(
            color: whiteColor,
            boxShadow: [
              BoxShadow(
                color: darkColor.withOpacity(0.5),
                blurRadius: 5,
                offset: const Offset(-3, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: primaryColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                margin: const EdgeInsets.all(6),
                width: MediaQuery.of(context).size.width / 7,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.contain,
                  ),
                )),
            Container(
              margin: const EdgeInsets.all(6),
              width: MediaQuery.of(context).size.width / 1.7,
              child: AutoSizeText(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: primaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: primaryColor,
              size: 25,
            ),
          ],
        ),
      ),
    );
  }
}
