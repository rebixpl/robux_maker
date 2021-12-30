import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robux_maker/presentation/ui/theme.dart';

AppBar mainAppBar({required String title}) {
  return AppBar(
    title: Text(
      title,
      style: GoogleFonts.montserrat(
        color: Colors.black,
        fontSize: 22.0,
        fontWeight: FontWeight.w500,
      ),
    ),
    titleSpacing: 0, // removes padding from leading
    leading: InkWell(
      onTap: () {},
      child: const Icon(
        Icons.menu,
        color: Colors.black,
        size: 32.0,
      ),
    ),
    actions: [
      InkWell(
        onTap: () {},
        child: const Icon(
          Icons.info_outline,
          color: Colors.black,
          size: 32.0,
        ),
      )
    ],
    centerTitle: true,
    elevation: 0.0,
    backgroundColor: AppTheme.scaffoldBackground,
  );
}
