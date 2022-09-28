//Colors
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

const Color primaryColor = Color(0xff047940);
const Color secondaryColor = Color(0xffF7CF3B);
const Color redColor = Color(0xffE50909);
const Color offwhiteColor = Color(0xFFE9E8E8);
const Color whiteColor = Color(0xFFFEFEFE);
const Color darkColor = Color(0xff5E5D5D);
Color greyColor = const Color(0xff9C9C9C);
//const Color blackColor = Color(0xFF030303);
//const Color yellowColor = Color(0xFFffe169);
//const Color secondaryLightColor = Color(0xff80ED99);
const Color lightPrimaryColor = Color(0xff008d36);

///
/// Text Style
///
const TextStyle btnTextStyle =
    TextStyle(fontFamily: fontFamily, fontSize: 16, color: whiteColor);
const TextStyle whiteTextStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: whiteColor);
const TextStyle blackTextStyle =
    TextStyle(fontFamily: fontFamily, fontSize: 20, color: Colors.black);
InputDecoration textFormDecoration = InputDecoration(
    contentPadding: const EdgeInsets.all(10),
    focusColor: primaryColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(3),
      borderSide: const BorderSide(
        color: Colors.grey,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(3),
      borderSide: const BorderSide(
        color: primaryColor,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(3),
      borderSide: const BorderSide(
        color: Colors.grey,
      ),
    ),
    labelText: "رقم الهاتف",
    labelStyle: const TextStyle(color: primaryColor));

Map<int, Color> customColor = {
  50: const Color.fromRGBO(4, 121, 64, .1),
  100: const Color.fromRGBO(4, 121, 64, .2),
  200: const Color.fromRGBO(4, 121, 64, .3),
  300: const Color.fromRGBO(4, 121, 64, .4),
  400: const Color.fromRGBO(4, 121, 64, .5),
  500: const Color.fromRGBO(4, 121, 64, .6),
  600: const Color.fromRGBO(4, 121, 64, .7),
  700: const Color.fromRGBO(4, 121, 64, .8),
  800: const Color.fromRGBO(4, 121, 64, .9),
  900: const Color.fromRGBO(4, 121, 64, 1),
};

MaterialColor colorCustom = MaterialColor(0xFF047940, customColor);
