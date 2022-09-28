
import 'package:get/get.dart';

class CheckBoxController extends GetxController {
  bool brucellosis = false;
  bool bef = false;
  bool cd = false;
  bool pasteurllosis = false;
  bool fmd = false;
  bool rvf = false;
  bool bvd = false;
  bool rcv = false;
  bool lsd = false;

  void brucellosisonChange(bool? value) {
    brucellosis = value ?? false;

    update();
  }
  void befChange(bool? value) {
    bef = value ?? false;

    update();
  }
  void cdonChange(bool? value) {
    cd = value ?? false;

    update();
  }
  void pasteurllosisonChange(bool? value) {
    pasteurllosis = value ?? false; 

    update();
  }
  void fmdChange(bool? value) {
    fmd = value ?? false;

    update();
  }
  void rvfChange(bool? value) {
    rvf = value ?? false;

    update();
  }
  void bvdChange(bool? value) {
    bvd = value ?? false;

    update();
  }
  void rcvChange(bool? value) {
    rcv = value ?? false;

    update();
  }
  void lsdChange(bool? value) {
    lsd = value ?? false;

    update();
  }
}
