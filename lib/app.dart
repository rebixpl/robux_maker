import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robux_maker/logic/makerstate/makerstate_bloc.dart';
import 'package:robux_maker/presentation/screens/welcome_screen.dart';
import 'package:robux_maker/presentation/ui/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Robux Master",
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppTheme.scaffoldBackground,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider<MakerstateBloc>(
        create: (context) => MakerstateBloc(),
        child: const WelcomeScreen(),
      ),
    );
  }
}
