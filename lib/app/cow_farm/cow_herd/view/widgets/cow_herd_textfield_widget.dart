import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/style.dart';

class CowHerdTextFieldWidget extends StatelessWidget {
  const CowHerdTextFieldWidget(
      {Key? key,
      required this.title,
  //    required this.onChange,
      required this.validator,
      required this.controller})
      : super(key: key);
  final String title;
  // final Function(String? val)? onChange;
  final String? Function(String? val)? validator;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
      child: TextFormField(
        controller: controller,
        textAlign:
            Get.locale == const Locale('en') ? TextAlign.left : TextAlign.right,
        keyboardType: TextInputType.number,
        cursorColor: primaryColor,
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
        textInputAction: TextInputAction.next,
        // onChanged: onChange,
        validator: validator,
      ),
    );
  }
}
