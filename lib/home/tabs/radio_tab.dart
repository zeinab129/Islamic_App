import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/radio_image.png"),
          SizedBox(
            height: 12,
          ),
          Text("إذاعة القرآن الكريم"),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: onPreviousPressed, icon: Icon(Icons.skip_previous, color: Color(0xffB7935F), size: 45)),
              IconButton(onPressed: onPlayPressed, icon: Icon(Icons.play_arrow, color: Color(0xffB7935F), size: 64,)),
              IconButton(onPressed: onNextPressed, icon: Icon(Icons.skip_next, color: Color(0xffB7935F), size: 45))
            ],
          )
        ],
      ),
    );
  }


  void onPlayPressed(){

  }

  void onNextPressed(){

  }

  void onPreviousPressed(){

  }
}
