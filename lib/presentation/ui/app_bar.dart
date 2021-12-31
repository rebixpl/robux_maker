import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robux_maker/presentation/ui/theme.dart';

AppBar mainAppBar({required String title}) {
  return AppBar(
    title: Padding(
      padding: const EdgeInsets.only(left: 31.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 32.0,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    titleSpacing: 0, // removes padding from leading
    automaticallyImplyLeading: false, // removes padding from leading
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 31.0),
        child: InkWell(
          onTap: () {},
          child: const Icon(
            Icons.info_outline,
            color: Colors.black,
            size: 32.0,
          ),
        ),
      )
    ],
    centerTitle: true,
    elevation: 0.0,
    backgroundColor: AppTheme.scaffoldBackground,
  );
}
