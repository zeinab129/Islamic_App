import 'package:flutter/material.dart';
import 'package:islamic_app/view/hadeeth_details_screen.dart';
import 'package:islamic_app/view/home/home_screen.dart';
import 'package:islamic_app/my_theme/my_theme.dart';
import 'package:islamic_app/view/sura_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SuraDetailsScreen.routeName: (context) => const SuraDetailsScreen(),
        HadeethDetailsScreen.routeName: (context) =>
            const HadeethDetailsScreen()
      },
    );
  }

  loadHadeethFile() {}
}
