import 'package:flutter/material.dart';

import '../../../../../utils/style.dart';

class GoatImmunizationNewTextFieldWidget extends StatelessWidget {
  const GoatImmunizationNewTextFieldWidget({
    Key? key,
    required this.title,
    required this.onNoteChange,
    required this.controller,
  }) : super(key: key);
  final  TextEditingController controller ;
  final String title;
  final Function(String? val) onNoteChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
      child: TextFormField(
        controller: controller,
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
        onSaved: onNoteChange,
      ),
    );
  }
}
