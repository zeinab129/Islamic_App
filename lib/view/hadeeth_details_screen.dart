import 'package:flutter/material.dart';
import 'package:islamic_app/model/hadeth_model.dart';

class HadeethDetailsScreen extends StatelessWidget {
  static const String routeName = "HADEETH_DETAILS_SCREEN";

  const HadeethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadethModel hadethModel =
        ModalRoute.of(context)!.settings.arguments as HadethModel;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/bg_image.png",
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadethModel.title),
        ),
        body: Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Text(
                hadethModel.content[index],
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              );
            },
            itemCount: hadethModel.content.length,
          ),
        ),
      ),
    );
  }
}
