import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robux_maker/presentation/ui/theme.dart';
import 'package:robux_maker/presentation/ui/welcome_screen/big_button.dart';
import 'package:robux_maker/presentation/ui/welcome_screen/login_text_field.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(31.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _welcomeText(),
            const SizedBox(height: 50.0),
            // E-MAIL FORM
            const LoginTextField(isEmail: true),
            const SizedBox(height: 19.0),
            // PASSWORD FORM
            const LoginTextField(isEmail: false),
            const SizedBox(height: 19.0),
            _forgotPasswordButton(),
            const SizedBox(height: 51.0),
            BigButton(
              color: AppTheme.mainGreen,
              text: "Sign In",
              onPressed: () {},
            ),
            const SizedBox(height: 19.0),
            _bottomTextButton(),
          ],
        ),
      ),
    );
  }

  Align _welcomeText() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Welcome to \nRobux Maker",
        style: GoogleFonts.montserrat(
          color: Colors.black,
          fontSize: 35.0,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }

  Align _forgotPasswordButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        "Forgot Password?",
        style: GoogleFonts.montserrat(
          color: AppTheme.mainGreen,
          fontSize: 15.0,
        ),
      ),
    );
  }

  Widget _bottomTextButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: GoogleFonts.montserrat(
            color: Colors.black,
            fontSize: 15.0,
          ),
        ),
        Text(
          "Sign Up?",
          style: GoogleFonts.montserrat(
            color: AppTheme.mainGreen,
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }
}
