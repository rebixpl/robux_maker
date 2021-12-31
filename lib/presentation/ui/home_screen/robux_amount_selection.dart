import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robux_maker/presentation/ui/theme.dart';

class RBXAmountSelection extends StatelessWidget {
  const RBXAmountSelection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<int> robuxAmount = [200, 400, 1700];
    const List<int> times = [5, 10, 60];
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 12.0),
      shrinkWrap: true,
      itemCount: 3,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          color: AppTheme.mainGrey,
          child: ListTile(
            isThreeLine: true,
            leading: Image.asset(
              'assets/img/robux.png',
              width: 44.0,
              height: 44.0,
            ),
            title: Text(
              "${robuxAmount[index]} ROBUX",
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: _chips(index),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _smallText(text: "${times[index]} min"),
                InkWell(
                  onTap: () {
                    debugPrint(
                        "$index pressed: ${robuxAmount[index]} robuxes to add");
                  },
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    color: AppTheme.mainGreen,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Align _chips(int index) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          _chip(text: 'Slow'),
          index == 2
              ? Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: _chip(
                    text: 'May Not Work',
                    textColor: AppTheme.mainRed,
                    chipColor: AppTheme.secondRed,
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }

  Chip _chip({
    required String text,
    Color textColor = AppTheme.mainGreen,
    Color chipColor = Colors.white,
  }) {
    return Chip(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      label: _smallText(text: text, color: textColor),
      backgroundColor: chipColor,
      shadowColor: Colors.black,
      elevation: 1.0,
    );
  }

  Text _smallText({
    required String text,
    Color color = AppTheme.mainGreen,
  }) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: color,
        fontSize: 12.0,
      ),
    );
  }
}
