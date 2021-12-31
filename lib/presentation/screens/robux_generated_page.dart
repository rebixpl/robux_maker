import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robux_maker/presentation/ui/generated_screen/success_text.dart';
import 'package:robux_maker/presentation/ui/info_page/robux_maker_description.dart';
import 'package:robux_maker/presentation/ui/theme.dart';
import 'package:robux_maker/presentation/ui/welcome_screen/big_button.dart';

class RobuxGeneratedPage extends StatelessWidget {
  const RobuxGeneratedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 24.0),
            _robuxImg(),
            const SuccessText(),
            Align(
              alignment: Alignment.center,
              child: Text(
                "400 ROBUX has been added to your @gamingpapiez2137 account!",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24.0),
            BigButton(
              color: AppTheme.mainGreen,
              text: "Go Back",
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
            const SizedBox(height: 24.0),
            const RobuxMakerDescription(),
          ],
        ),
      ),
    );
  }

  Container _robuxImg() {
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: Image.asset("assets/img/robux.png").image,
        ),
      ),
    );
  }
}
