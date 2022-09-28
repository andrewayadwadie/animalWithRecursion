import 'package:flutter/material.dart';

import '../../../../utils/style.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.logoPath,
  }) : super(key: key);
  final String title;
  final String subTitle;
  final String logoPath;

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [lightPrimaryColor, primaryColor])),
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               Image.asset(
                logoPath,
                width: MediaQuery.of(context).size.width / 5,
                height: MediaQuery.of(context).size.height / 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subTitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: whiteColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
             
            ],
          ),
        ));
  }
}
