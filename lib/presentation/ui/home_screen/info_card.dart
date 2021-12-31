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
    const double _width = 173.0;
    const double _height = 200.0;

    return InkWell(
      onTap: () {},
      child: SizedBox(
        width: _width,
        height: _height,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Stack(
            fit: StackFit.expand,
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
