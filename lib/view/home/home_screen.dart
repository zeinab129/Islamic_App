import 'package:flutter/material.dart';
import 'package:islamic_app/providers/my_provider.dart';
import 'package:islamic_app/view/home/tabs/ahadeeth_tab/ahadeeth_tab.dart';
import 'package:islamic_app/view/home/tabs/quran_tab.dart';
import 'package:islamic_app/view/home/tabs/radio_tab.dart';
import 'package:islamic_app/view/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:islamic_app/view/home/tabs/settings_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HOME_SCREEN";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Stack(
      children: [
        Image.asset(
          provider.getBackgroundPath(),
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_name,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_quran.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_sebha.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_ahadeeth.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_radio.png")),
                  label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: "")
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    const SebhaTab(),
    const AhadeethTab(),
    const RadioTab(),
    const SettingsTab()
  ];
}
