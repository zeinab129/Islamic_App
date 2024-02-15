import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/my_theme/my_theme.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/radio_image.png"),
          const SizedBox(
            height: 12,
          ),
          Text(AppLocalizations.of(context)!.quran_radio_chanel),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: onPreviousPressed,
                  icon: const Icon(Icons.skip_previous,
                      color: MyTheme.primaryColor, size: 45)),
              IconButton(
                  onPressed: onPlayPressed,
                  icon: const Icon(
                    Icons.play_arrow,
                    color: MyTheme.primaryColor,
                    size: 64,
                  )),
              IconButton(
                  onPressed: onNextPressed,
                  icon: const Icon(Icons.skip_next,
                      color: MyTheme.primaryColor, size: 45))
            ],
          )
        ],
      ),
    );
  }

  void onPlayPressed() {}

  void onNextPressed() {}

  void onPreviousPressed() {}
}
