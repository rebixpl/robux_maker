import 'package:flutter/material.dart';
import 'package:robux_maker/presentation/ui/theme.dart';

class QuantumGenSelector extends StatefulWidget {
  const QuantumGenSelector({Key? key}) : super(key: key);

  @override
  State<QuantumGenSelector> createState() => _QuantumGenSelectorState();
}

class _QuantumGenSelectorState extends State<QuantumGenSelector> {
  late int activeIndex;
  static const List<String> images = [
    "dwave.png",
    "ibm.png",
    "1qbit.png",
    "qcware.png",
  ];

  @override
  void initState() {
    activeIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 29.0),
        itemCount: 4,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return GeneratorWidget(
            imageName: images[index],
            isActive: activeIndex == index ? true : false,
            onTap: () {
              setState(() {
                activeIndex = index;
              });
            },
          );
        },
      ),
    );
  }
}

class GeneratorWidget extends StatelessWidget {
  final String imageName;
  final bool isActive;
  final VoidCallback? onTap;

  const GeneratorWidget({
    Key? key,
    required this.imageName,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: AppTheme.mainGrey,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Image.asset(
              "assets/img/$imageName",
              fit: BoxFit.contain,
            ),
          ),
          isActive
              ? Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: AppTheme.mainGreen.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 34.0,
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
