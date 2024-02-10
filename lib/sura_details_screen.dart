import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/model/sura_model.dart';
import 'package:islamic_app/my_theme/my_theme.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "SURA_DETAILS_SCREEN";

  const SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraModel suraModel =
        ModalRoute.of(context)!.settings.arguments as SuraModel;

    if (verses.isEmpty) {
      loadFile(suraModel.index);
    }

    return Container(
      decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage("assets/images/bg_image.png"))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            suraModel.name,
          ),
        ),
        body: Card(
          color: Colors.white.withOpacity(0.25),
          margin: const EdgeInsets.all(18),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(

              itemBuilder: (context, index) {
                return Text(
                  "${verses[index]}{${index+1}}",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context).textTheme.bodySmall,
                );
              },
              itemCount: verses.length,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    verses = lines;
    setState(() {});
  }
}
