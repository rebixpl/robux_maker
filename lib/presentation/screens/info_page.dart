import 'package:flutter/material.dart';
import 'package:robux_maker/presentation/ui/app_bar.dart';
import 'package:robux_maker/presentation/ui/info_page/robux_maker_description.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(
        title: "About This App",
        isGoBackLeading: true,
        onTapLeading: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31.0),
        child: Column(
          children: const [
            SizedBox(height: 24.0),
            RobuxMakerDescription(),
          ],
        ),
      ),
    );
  }
}
