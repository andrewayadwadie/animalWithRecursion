import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../utils/db/auth_shared_preferences.dart';
import '../../utils/style.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AutoSizeText(
        SharedPreferencesHelper.getOwnerNameValue(),
        overflow: TextOverflow.clip,
        style: const TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.bold,
        ),
        maxFontSize: 20,
      ),
    );
  }
}
