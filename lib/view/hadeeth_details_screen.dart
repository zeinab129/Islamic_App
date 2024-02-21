import 'package:flutter/material.dart';
import 'package:islamic_app/model/hadeth_model.dart';
import 'package:islamic_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class HadeethDetailsScreen extends StatelessWidget {
  static const String routeName = "HADEETH_DETAILS_SCREEN";

  const HadeethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadethModel hadethModel =
        ModalRoute.of(context)!.settings.arguments as HadethModel;

    var provider = Provider.of<MyProvider>(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                provider.getBackgroundPath(),
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
            color: provider.getBgTansColor(),
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
