import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/model/hadeth_model.dart';

class HadeethDetailsProvider extends ChangeNotifier {
  List<HadethModel> ahadethData = [];

  void loadHadeethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> ahadeth = value.split("#");
      for (int i = 0; i < ahadeth.length; i++) {
        String hadeth = ahadeth[i];
        List<String> hadethLines = hadeth.trim().split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        ahadethData.add(
            HadethModel(title: title, content: hadethLines)); //hadeth content
        notifyListeners();
      }
    });
  }
}
