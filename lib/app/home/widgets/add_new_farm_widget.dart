import 'package:flutter/material.dart';

import '../../../utils/style.dart';

class AddNewFarmWidget extends StatelessWidget {
  const AddNewFarmWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onClick,
  }) : super(key: key);
final String title;
final IconData icon;
final VoidCallback  onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  onClick,
      child: Container(
        width: MediaQuery.of(context).size.width  ,
        height: MediaQuery.of(context).size.height / 8,
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 80),
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration:
                  const BoxDecoration(
                    //border: Border.all(width: 2, color: Colors.red)
                  ),
              child:   Icon(icon,color: whiteColor,size: 40,),
            ),
               Text(
              title,
              style: const TextStyle(
                  color: whiteColor, fontSize: 15, fontWeight: FontWeight.bold),
            ),
       
          ],
        ),
      ),
    );
  }
}
