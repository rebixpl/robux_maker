import 'package:flutter/material.dart';
import 'package:robux_maker/presentation/ui/theme.dart';

class HSIndicator extends StatelessWidget {
  // final int index;
  // final int maxIndex;

  const HSIndicator({
    Key? key,
    // required this.index,
    // required this.maxIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemCount: maxIndex,
    //   itemBuilder: (BuildContext context, int builderIndex) {
    //     return Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 4.0),
    //       child: Container(
    //         width: 10.0,
    //         height: 10.0,
    //         decoration: BoxDecoration(
    //           shape: BoxShape.circle,
    //           color: index == builderIndex + 1
    //               ? AppTheme.mainGreen
    //               : AppTheme.mainGrey,
    //         ),
    //       ),
    //     );
    //   },
    // );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 10.0,
          height: 10.0,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppTheme.mainGreen),
        ),
        const SizedBox(width: 10.0),
        Container(
          width: 10.0,
          height: 10.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppTheme.secondGrey,
          ),
        ),
        const SizedBox(width: 10.0),
        Container(
          width: 10.0,
          height: 10.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppTheme.secondGrey,
          ),
        ),
      ],
    );
  }
}
