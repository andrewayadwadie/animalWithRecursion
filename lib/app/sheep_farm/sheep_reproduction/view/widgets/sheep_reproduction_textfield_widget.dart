import 'package:flutter/material.dart';

import '../../../../../utils/style.dart';

class SheepReproductionTextFieldWidget extends StatelessWidget {
  const SheepReproductionTextFieldWidget({
    Key? key,
    required this.title,
    required this.onNoteChange,
  }) : super(key: key);
  final String title;
  final Function(String? val) onNoteChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
      child: TextFormField(
        keyboardType: TextInputType.text,
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
        onChanged: onNoteChange,
        // validator: (value) {}, // enabledBorder: InputBorder.none,
      ),
    );
  }
}
