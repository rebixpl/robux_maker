import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robux_maker/logic/robux_bloc/robux_bloc_bloc.dart';
import 'package:robux_maker/presentation/ui/app_bar.dart';
import 'package:robux_maker/presentation/ui/generator_page/generator_text_field.dart';
import 'package:robux_maker/presentation/ui/generator_page/quantum_generator_selection.dart';
import 'package:robux_maker/presentation/ui/info_page/robux_maker_description.dart';
import 'package:robux_maker/presentation/ui/theme.dart';
import 'package:robux_maker/presentation/ui/welcome_screen/big_button.dart';

class GeneratorScreen extends StatefulWidget {
  const GeneratorScreen({Key? key}) : super(key: key);

  @override
  State<GeneratorScreen> createState() => _GeneratorScreenState();
}

class _GeneratorScreenState extends State<GeneratorScreen> {
  String _username = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(
        title: "${context.select(
          (RobuxBlocBloc bloc) => bloc.state.robuxToGenerate,
        )} ROBUX",
        isGoBackLeading: true,
        onTapLeading: () {},
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31.0),
          child: Column(
            children: [
              const SizedBox(height: 17.0),
              _categoryText(text: "Select Quantum Generator"),
              const SizedBox(height: 27.0),
              const QuantumGenSelector(),
              const SizedBox(height: 57.0),
              _categoryText(text: "What’s your roblox username?"),
              const SizedBox(height: 23.0),
              const GeneratorTextField(
                hintText: 'Roblox Username',
                isUsername: true,
              ),
              const SizedBox(height: 23.0),
              _categoryText(text: "What’s your API key?"),
              const SizedBox(height: 23.0),
              const GeneratorTextField(
                hintText: 'API Key',
              ),
              const SizedBox(height: 27.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can get API code from robux__maker , the creator of this app. The key is one use only.",
                  style: GoogleFonts.montserrat(
                    color: AppTheme.secondGrey,
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20.0),
              BigButton(
                color: AppTheme.mainGreen,
                text: "Generate ROBUX",
                onPressed: () {
                  context.read<RobuxBlocBloc>().add(
                        const GenerateRobux(),
                      );
                  Navigator.pushNamed(context, "/robux_generated");
                },
              ),
              const SizedBox(height: 20.0),
              const RobuxMakerDescription(),
            ],
          ),
        ),
      ),
    );
  }

  Align _categoryText({required String text}) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
