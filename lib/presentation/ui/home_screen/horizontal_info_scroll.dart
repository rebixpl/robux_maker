import 'package:flutter/material.dart';
import 'package:robux_maker/presentation/ui/home_screen/horizontal_scroll_indicator.dart';
import 'package:robux_maker/presentation/ui/home_screen/info_card.dart';

class HorizontalInfoScroll extends StatefulWidget {
  const HorizontalInfoScroll({Key? key}) : super(key: key);

  @override
  _HorizontalInfoScrollState createState() => _HorizontalInfoScrollState();
}

class _HorizontalInfoScrollState extends State<HorizontalInfoScroll> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            children: const [
              InfoCard(
                title: 'How Robux Maker uses power of quantum computing',
                imagePath: 'assets/img/robuxcards.jpg',
              ),
              SizedBox(width: 20.0),
              InfoCard(
                title: 'We generate Roblox Promo Codes with Quantum Computer',
                imagePath: 'assets/img/quantumcomputer.jpg',
              ),
              SizedBox(width: 20.0),
              InfoCard(
                title: 'How Robux Maker uses power of quantum computing',
                imagePath: 'assets/img/robuxcards.jpg',
              ),
              SizedBox(width: 20.0),
              InfoCard(
                title: 'We generate Roblox Promo Codes with Quantum Computer',
                imagePath: 'assets/img/quantumcomputer.jpg',
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: SizedBox(
            height: 20,
            child: HSIndicator(),
          ),
        ),
      ],
    );
  }
}
