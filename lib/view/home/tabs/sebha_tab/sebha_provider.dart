import 'package:flutter/cupertino.dart';

class SebhaProvider extends ChangeNotifier {
  List<String> azkar = [
    "سبحان الله",
    "الحمد لله",
    "لا اله الا الله",
    "الله أكبر",
    "لا حول ولا قوة الا بالله",
  ];
  int zekrIndex = 0;
  int counter = 0;

  double turn = 0.0;

  void onClick() {
    counter++;
    if (counter > 30) {
      counter = 0;
      if (zekrIndex < 3) {
        zekrIndex++;
      } else {
        zekrIndex = 0;
      }
    }
    rotateSebha();
    notifyListeners();
  }

  void rotateSebha() {
    if (counter > 0) {
      turn += 1 / 30;
    }
    notifyListeners();
  }
}
