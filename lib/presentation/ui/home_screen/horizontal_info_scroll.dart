import 'package:flutter/material.dart';
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
      children: [
        SizedBox(
          height: 300,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              InfoCard(
                title: 'Featured',
                imagePath: 'assets/img/robuxcards.jpg',
              ),
              SizedBox(width: 15),
              InfoCard(
                title: 'Featured',
                imagePath: 'assets/img/quantumcomputer.jpg',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
