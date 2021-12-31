import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robux_maker/presentation/ui/app_bar.dart';
import 'package:robux_maker/presentation/ui/theme.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(
        title: "About This App",
        isGoBackLeading: true,
        onTapLeading: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31.0),
        child: Column(
          children: [
            const SizedBox(height: 24.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Robux Maker App is private app created by tiktok: @robux__maker . It was deleted from Google Play Store, because it actually worked, and now it’s private for my usage only.",
                style: GoogleFonts.montserrat(
                  color: AppTheme.secondGrey,
                  fontSize: 15.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
