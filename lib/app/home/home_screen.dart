import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../utils/style.dart';
import '../shared_widgets/drawer/drawer_screen.dart';
import 'widgets/home_body_widget.dart';
import 'widgets/home_screen_header_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  DateTime timeBackPressed = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        DateTime now = DateTime.now();
        if (now.difference(timeBackPressed) > const Duration(seconds: 2)) {
          timeBackPressed = now;
          Get.snackbar("Alert", "Press back again to exit");
          return Future.value(false);
        }
        SystemNavigator.pop(); // add this.

        return Future.value(true);
      },
      child: SafeArea(
 
        child: Scaffold(
          key: _key,
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFFFF155), primaryColor])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:   [
                SizedBox(height: MediaQuery.of(context).size.height / 70),
                //!Home Screen Header
                  HomeScreenHeaderWidget(
                    onClick: () => _key.currentState!.openDrawer()
                    ),
                 
                //! Home Screen Body
                const Expanded(child: HomeBodyWidget()),
              ],
            ),
          ),
          drawer:   const ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25)),
            child: DrawerScreen(),
          ),
        ),
      ),
    );
  }
}
