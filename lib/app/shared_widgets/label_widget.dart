import 'package:flutter/material.dart';

import '../../utils/style.dart';

class LabelWidget extends StatelessWidget {
  const LabelWidget({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 15.0),
        child: Text(
          label,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            height: 1.1,
            color: primaryColor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
