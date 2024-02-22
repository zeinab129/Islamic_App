import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/my_theme/my_theme.dart';
import 'package:islamic_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

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
                  provider.changeTheme(ThemeMode.light);
                },
                child: Text(AppLocalizations.of(context)!.light,
                    style: GoogleFonts.elMessiri(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: provider.themeMode == ThemeMode.light
                            ? provider.getPrimaryColor()
                            : provider.themeMode == ThemeMode.light
                                ? Colors.black
                                : Colors.white)),
              ),
              if (provider.themeMode == ThemeMode.light) ...[
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
                provider.changeTheme(ThemeMode.dark);
              },
              child: Text(AppLocalizations.of(context)!.dark,
                  style: GoogleFonts.elMessiri(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: provider.themeMode == ThemeMode.dark
                          ? provider.getPrimaryColor()
                          : provider.themeMode == ThemeMode.light
                              ? Colors.black
                              : Colors.white)),
            ),
            if (provider.themeMode == ThemeMode.dark) ...[
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
