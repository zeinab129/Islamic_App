import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

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
                  icon: Transform(
                    alignment: Alignment.center,
                    transform: provider.languageCode == "ar"
                        ? Matrix4.rotationY(pi)
                        : Matrix4.rotationY(0),
                    child: Icon(Icons.skip_previous,
                        color: provider.getPrimaryColor(), size: 45),
                  )),
              IconButton(
                  onPressed: onPlayPressed,
                  icon: Icon(
                    Icons.play_arrow,
                    color: provider.getPrimaryColor(),
                    size: 64,
                  )),
              IconButton(
                  onPressed: onNextPressed,
                  icon: Transform(
                    alignment: Alignment.center,
                    transform: provider.languageCode == "ar"
                        ? Matrix4.rotationY(pi)
                        : Matrix4.rotationY(0),
                    child: Icon(Icons.skip_next,
                        color: provider.getPrimaryColor(), size: 45),
                  ))
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
