import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const InfoCard({
    Key? key,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double _width = 200.0;
    const double _height = 300.0;

    return SizedBox(
      width: _width,
      height: _height,
      child: Stack(
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.black26,
              width: _width,
              height: _height / 3,
              child: Text(
                title,
                textAlign: TextAlign.start,
                softWrap: true,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
