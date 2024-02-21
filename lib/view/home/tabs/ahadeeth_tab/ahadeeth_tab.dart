import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/providers/my_provider.dart';
import 'package:islamic_app/view/hadeeth_details_screen.dart';
import 'package:islamic_app/view/home/tabs/ahadeeth_tab/hadeeth_details_provider.dart';
import 'package:provider/provider.dart';

class AhadeethTab extends StatelessWidget {
  const AhadeethTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HadeethDetailsProvider>(
      create: (context) => HadeethDetailsProvider()..loadHadeethFile(),
      builder: (context, child) {
        var provider = Provider.of<HadeethDetailsProvider>(context);
        var mainProvider = Provider.of<MyProvider>(context);
        return Column(
          children: [
            Image.asset("assets/images/hadeth_logo.png"),
            Divider(
              thickness: 3,
              color: mainProvider.getPrimaryColor(),
            ),
            Text(
              AppLocalizations.of(context)!.ahadeeth,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Divider(
              thickness: 3,
              color: mainProvider.getPrimaryColor(),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, HadeethDetailsScreen.routeName,
                          arguments: provider.ahadethData[index]);
                    },
                    child: Text(
                      provider.ahadethData[index].title,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 18,
                    child: Divider(
                      color: mainProvider.getPrimaryColor(),
                      endIndent: 94,
                      indent: 94,
                    ),
                  );
                },
                itemCount: provider.ahadethData.length,
              ),
            )
          ],
        );
      },
    );
  }
}
