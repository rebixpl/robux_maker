import 'package:flutter/material.dart';
import 'package:robux_maker/presentation/ui/app_bar.dart';
import 'package:robux_maker/presentation/ui/home_screen/horizontal_info_scroll.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(title: "Robux Maker"),
      body: Padding(
        padding: const EdgeInsets.all(31.0),
        child: Column(
          children: const [
            Text("How It Works?"),
            HorizontalInfoScroll(),
            Text("Select ROBUX Amount"),
          ],
        ),
      ),
    );
  }
}
