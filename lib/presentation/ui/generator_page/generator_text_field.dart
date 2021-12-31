import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robux_maker/logic/robux_bloc/robux_bloc_bloc.dart';
import 'package:robux_maker/presentation/ui/theme.dart';

class GeneratorTextField extends StatefulWidget {
  final String hintText;
  final bool isUsername;

  const GeneratorTextField({
    Key? key,
    required this.hintText,
    this.isUsername = false,
  }) : super(key: key);

  @override
  State<GeneratorTextField> createState() => _GeneratorTextFieldState();
}

class _GeneratorTextFieldState extends State<GeneratorTextField> {
  final _myController = TextEditingController();

  @override
  void dispose() {
    _myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _myController,
      onChanged: (value) {
        widget.isUsername
            ? context.read<RobuxBlocBloc>().add(
                  ChangeUsername(username: _myController.text),
                )
            : null;
      },
      onSubmitted: (value) {
        widget.isUsername
            ? context.read<RobuxBlocBloc>().add(
                  ChangeUsername(username: _myController.text),
                )
            : null;
      },
      autofocus: false,
      style: GoogleFonts.montserrat(),
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: widget.hintText,
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
