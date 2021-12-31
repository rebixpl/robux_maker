import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robux_maker/logic/robux_bloc/robux_bloc_bloc.dart';

import 'package:robux_maker/presentation/ui/theme.dart';

class StatisticsRBX extends StatelessWidget {
  const StatisticsRBX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _statsCard(
            label: "Robux Generated",
            value: context.select(
              (RobuxBlocBloc bloc) => bloc.state.robuxGenerated,
            ),
          ),
        ),
        const SizedBox(width: 20.0),
        Expanded(
          child: _statsCard(
            label: "API Calls",
            value: context.select(
              (RobuxBlocBloc bloc) => bloc.state.apiCalls,
            ),
          ),
        ),
      ],
    );
  }

  Card _statsCard({
    required int value,
    required String label,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      color: AppTheme.mainGrey,
      child: SizedBox(
        height: 120.0,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 32.0,
                    height: 32.0,
                    decoration: BoxDecoration(
                      color: AppTheme.mainGreen,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Icon(
                      Icons.check,
                      size: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  Expanded(
                    child: Text(
                      label,
                      style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "$value",
                  style: GoogleFonts.rubik(
                    color: Colors.black,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w400,
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
