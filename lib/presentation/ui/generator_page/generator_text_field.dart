import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robux_maker/presentation/ui/theme.dart';

class GeneratorTextField extends StatelessWidget {
  final String hintText;
  const GeneratorTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      style: GoogleFonts.montserrat(),
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: GoogleFonts.montserrat(color: AppTheme.secondGrey),
        filled: true,
        fillColor: AppTheme.mainGrey,
        contentPadding:
            const EdgeInsets.only(left: 14.0, bottom: 6.0, top: 8.0),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}