import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/providers/my_provider.dart';
import 'package:islamic_app/view/bottom_sheets/language_bottom_sheet.dart';
import 'package:islamic_app/view/bottom_sheets/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 4,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const LanguageBottomSheet();
                  });
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border:
                      Border.all(color: provider.getPrimaryColor(), width: 3)),
              child: Text(
                provider.languageCode == "ar"
                    ? AppLocalizations.of(context)!.arabic
                    : AppLocalizations.of(context)!.english,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.025),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 4,
          ),
          InkWell(
            onTap: () {
              print(provider.themeMode);
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const ThemeBottomSheet();
                  });
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border:
                      Border.all(color: provider.getPrimaryColor(), width: 3)),
              child: Text(
                provider.themeMode == ThemeMode.light
                    ? AppLocalizations.of(context)!.light
                    : AppLocalizations.of(context)!.dark,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
