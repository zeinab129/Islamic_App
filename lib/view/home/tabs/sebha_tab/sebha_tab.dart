import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/providers/my_provider.dart';
import 'package:islamic_app/view/home/tabs/sebha_tab/sebha_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return ChangeNotifierProvider<SebhaProvider>(
      create: (context) => SebhaProvider(),
      builder: (context, child) {
        var sebhaProvider = Provider.of<SebhaProvider>(context);
        return SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 300,
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset(provider.getSebhaHeadPath()),
                      Positioned(
                        top: 73,
                        child: AnimatedRotation(
                          turns: sebhaProvider.turn,
                          duration: const Duration(milliseconds: 10),
                          child: Image.asset(provider.getSebhaBodyPath()),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(AppLocalizations.of(context)!.no_of_tasbeh),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: provider.getCounterBgTansColor()),
                  child: Text(sebhaProvider.counter.toString()),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: sebhaProvider.onClick,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: provider.getPrimaryColor(),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24))),
                  child: Text(
                    sebhaProvider.azkar[sebhaProvider.zekrIndex],
                    style: const TextStyle(color: Colors.white, fontSize: 28),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
