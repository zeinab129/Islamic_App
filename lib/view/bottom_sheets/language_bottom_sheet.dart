import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changeLanguage("en");
                },
                child: Text(AppLocalizations.of(context)!.english,
                    style: GoogleFonts.elMessiri(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: provider.languageCode == "en"
                            ? provider.getPrimaryColor()
                            : provider.themeMode == ThemeMode.light
                                ? Colors.black
                                : Colors.white)),
              ),
              if (provider.languageCode == "en") ...[
                Icon(
                  Icons.done,
                  size: 35,
                  color: provider.getPrimaryColor(),
                )
              ]
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
              onTap: () {
                provider.changeLanguage("ar");
              },
              child: Text(AppLocalizations.of(context)!.arabic,
                  style: GoogleFonts.elMessiri(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: provider.languageCode == "ar"
                          ? provider.getPrimaryColor()
                          : provider.themeMode == ThemeMode.light
                              ? Colors.black
                              : Colors.white)),
            ),
            if (provider.languageCode == "ar") ...[
              Icon(
                Icons.done,
                size: 35,
                color: provider.getPrimaryColor(),
              )
            ],
          ])
        ],
      ),
    );
  }
}
