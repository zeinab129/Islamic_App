import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/model/hadeth_model.dart';
import 'package:islamic_app/my_theme/my_theme.dart';
import 'package:islamic_app/view/hadeeth_details_screen.dart';

class AhadeethTab extends StatefulWidget {
  AhadeethTab({super.key});

  @override
  State<AhadeethTab> createState() => _AhadeethTabState();
}

class _AhadeethTabState extends State<AhadeethTab> {
  List<HadethModel> ahadethData = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethData.isEmpty) {
      loadHadeethFile();
    }

    return Column(
      children: [
        Image.asset("assets/images/hadeth_logo.png"),
        const Divider(
          thickness: 3,
          color: MyTheme.primaryColor,
        ),
        Text(
          "الأحاديث",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Divider(
          thickness: 3,
          color: MyTheme.primaryColor,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadeethDetailsScreen.routeName,
                      arguments: ahadethData[index]);
                },
                child: Text(
                  ahadethData[index].title,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 18,
                child: Divider(
                  color: MyTheme.primaryColor,
                  endIndent: 94,
                  indent: 94,
                ),
              );
            },
            itemCount: ahadethData.length,
          ),
        )
      ],
    );
  }

  loadHadeethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> ahadeth = value.split("#");
      for (int i = 0; i < ahadeth.length; i++) {
        String hadeth = ahadeth[i];
        List<String> hadethLines = hadeth.trim().split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        ahadethData.add(
            HadethModel(title: title, content: hadethLines)); //hadeth content
      }
      setState(() {});
    });
  }
}
