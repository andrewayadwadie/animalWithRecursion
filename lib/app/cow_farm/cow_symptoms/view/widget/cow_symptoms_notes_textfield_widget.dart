import 'package:flutter/material.dart';

import '../../../../../utils/style.dart';

class CowSymptomsNote extends StatelessWidget {
  const CowSymptomsNote({
    Key? key,
    required this.title,
    required this.controller,
  }) : super(key: key);
  final String title;

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 40, top: 10),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.text,
        cursorColor: primaryColor,
        maxLines: 2,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: greyColor),
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: title,
        ),
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
