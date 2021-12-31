import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessText extends StatelessWidget {
  const SuccessText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        "SUCCESS",
        style: GoogleFonts.montserrat(
          color: Colors.black,
          fontSize: 45.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
