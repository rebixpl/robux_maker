import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robux_maker/presentation/ui/theme.dart';

class RobuxMakerDescription extends StatelessWidget {
  const RobuxMakerDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Robux Maker App is private app created by tiktok: @robux__maker . It was deleted from Google Play Store, because it actually worked, and now it’s private for my usage only.",
        style: GoogleFonts.montserrat(
          color: AppTheme.secondGrey,
          fontSize: 15.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
