import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/home/tabs/ahadeeth_tab.dart';
import 'package:islamic_app/home/tabs/quran_tab.dart';
import 'package:islamic_app/home/tabs/radio_tab.dart';
import 'package:islamic_app/home/tabs/sebha_tab.dart';
import 'package:islamic_app/home/tabs/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HOME_SCREEN";

  HomeScreen({super.key});

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
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "إسلامي",
              style: GoogleFonts.elMessiri(
                  fontSize: 30, fontWeight: FontWeight.w700),
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color(0XFFB7935F),
            type: BottomNavigationBarType.fixed,
            iconSize: 35,
            currentIndex: index,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black54,
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
    SebhaTab(),
    AhadeethTab(),
    RadioTab(),
    SettingsTab()
  ];
}
