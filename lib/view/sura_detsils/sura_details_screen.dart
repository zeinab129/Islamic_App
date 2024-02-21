import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/model/sura_model.dart';
import 'package:islamic_app/my_theme/my_theme.dart';
import 'package:islamic_app/providers/my_provider.dart';
import 'package:islamic_app/view/sura_detsils/sura_details_provider.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = "SURA_DETAILS_SCREEN";

  const SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SuraModel suraModel =
        ModalRoute.of(context)!.settings.arguments as SuraModel;

    var mainProvider = Provider.of<MyProvider>(context);

    return ChangeNotifierProvider<SuraDetailsProvider>(
      create: (context) => SuraDetailsProvider()..loadFile(suraModel.index),
      builder: (context, child) {
        var provider = Provider.of<SuraDetailsProvider>(context);
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(mainProvider.getBackgroundPath()))),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                suraModel.name,
              ),
            ),
            body: Card(
              color: mainProvider.getBgTansColor(),
              margin: const EdgeInsets.all(18),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Text(
                      "${provider.verses[index]} {${index + 1}}",
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.bodySmall,
                    );
                  },
                  itemCount: provider.verses.length,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
