import 'package:flutter/material.dart';
import 'package:islamic_app/view/home/tabs/ahadeeth_tab.dart';
import 'package:islamic_app/view/home/tabs/quran_tab.dart';
import 'package:islamic_app/view/home/tabs/radio_tab.dart';
import 'package:islamic_app/view/home/tabs/sebha_tab.dart';
import 'package:islamic_app/view/home/tabs/settings_tab.dart';

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
    return Stack(
      children: [
        Image.asset(
          "assets/images/bg_image.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: const Text(
              "إسلامي",
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
    AhadeethTab(),
    const RadioTab(),
    const SettingsTab()
  ];
}
