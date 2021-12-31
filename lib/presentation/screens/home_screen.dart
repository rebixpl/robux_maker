import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robux_maker/presentation/ui/app_bar.dart';
import 'package:robux_maker/presentation/ui/home_screen/horizontal_info_scroll.dart';
import 'package:robux_maker/presentation/ui/home_screen/robux_amount_selection.dart';
import 'package:robux_maker/presentation/ui/home_screen/statistics.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(
        title: "Robux Maker",
        onTapActions: () {
          Navigator.pushNamed(context, "/info");
        },
        onTapLeading: () {},
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31.0),
          child: Column(
            children: [
              const SizedBox(height: 17.0),
              _smallCategoryText(text: "How It Works?"),
              const SizedBox(height: 20.0),
              const HorizontalInfoScroll(),
              _smallCategoryText(text: "Select ROBUX Amount"),
              const SizedBox(height: 25.0),
              const RBXAmountSelection(),
              const SizedBox(height: 20.0),
              _smallCategoryText(text: "Your Today Statistics"),
              const SizedBox(height: 20.0),
              const StatisticsRBX(),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Align _smallCategoryText({required String text}) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          color: Colors.black,
          fontSize: 15.0,
        ),
      ),
    );
  }
}
