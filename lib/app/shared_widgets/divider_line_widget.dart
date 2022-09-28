import 'package:flutter/material.dart';

class LineWidget extends StatelessWidget {
  const LineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey.withOpacity(0.5),
      thickness: 1,
    );
  }
}
