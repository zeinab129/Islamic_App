import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> azkar = [
    "سبحان الله",
    "الحمد لله",
    "لا اله الا الله",
    "الله أكبر"
  ];
  int zekrIndex = 0;
  int counter = 0;

  double turn = 0.0;

  @override
  Widget build(BuildContext context) {
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
                  Image.asset(
                    "assets/images/head_sebha_logo.png",
                  ),
                  Positioned(
                    top: 73,
                    child: AnimatedRotation(
                      turns: turn,
                      duration: const Duration(milliseconds: 10),
                      child: Image.asset(
                        "assets/images/body_sebha_logo.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text("عدد التسبيحات"),
            const SizedBox(
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xffB7935F).withOpacity(0.57)),
              child: Text(counter.toString()),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: onClick,
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffB7935F),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24))),
              child: Text(
                azkar[zekrIndex],
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onClick() {
    counter++;
    if (counter > 30) {
      counter = 0;
      if (zekrIndex < 3) {
        zekrIndex++;
      } else {
        zekrIndex = 0;
      }
    }
    rotateSebha();
    setState(() {});
  }

  void rotateSebha() {
    if (counter > 0) {
      turn += 1 / 30;
    }
    setState(() {});
  }
}
