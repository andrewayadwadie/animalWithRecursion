import 'package:flutter/material.dart';

import '../../../../../utils/style.dart';

class InsectFormTextFieldWidget extends StatelessWidget {
  const InsectFormTextFieldWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
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
            labelText: title,
            hintText: title,
            labelStyle: const TextStyle(
                height: 1.1, fontSize: 12, fontWeight: FontWeight.bold)),
        textInputAction: TextInputAction.next,
        onSaved: (val) {},
        validator: (value) {
          return null;
        }, // enabledBorder: InputBorder.none,
      ),
    );
  }
}
