import "package:flutter/material.dart";
import 'package:get/get.dart';

import "../../../../../utils/style.dart";

class CowPlaceSampleWidget extends StatelessWidget {
  const CowPlaceSampleWidget({
    Key? key,
    required this.onChange,
    required this.controller,
  }) : super(key: key);
  final Function(String?)? onChange;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        controller: controller,
        cursorHeight: 20,
        keyboardType: TextInputType.text,

        decoration: InputDecoration(
          //========error================
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: redColor, width: 2.0),
              borderRadius: BorderRadius.circular(5),
              gapPadding: 6),
          errorStyle: const TextStyle(fontSize: 8),
          contentPadding: const EdgeInsets.only(bottom: 15, right: 10),
          //============================================
          // =========border ===================================
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: primaryColor),
            borderRadius: BorderRadius.circular(10),
          ),
          //============================================
          // =========label ===================================
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelStyle: const TextStyle(fontSize: 11),

          //============================================
          // =========hint ===================================
          hintText: "Enter Veterinary Diagnostic Laboratory Location".tr,
          hintStyle: const TextStyle(fontSize: 10),

          //enabledBorder: InputBorder.none
        ),
        // The validator receives the text that the user has entered.
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Enter Veterinary Diagnostic Laboratory Location".tr;
          }
          return null;
        },
        onChanged: onChange,
      ),
    );
  }
}
