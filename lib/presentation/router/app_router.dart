import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robux_maker/logic/robux_bloc/robux_bloc_bloc.dart';
import 'package:robux_maker/presentation/screens/generator_page.dart';
import 'package:robux_maker/presentation/screens/home_screen.dart';
import 'package:robux_maker/presentation/screens/info_page.dart';
import 'package:robux_maker/presentation/screens/robux_generated_page.dart';
import 'package:robux_maker/presentation/screens/welcome_screen.dart';

class AppRouter {
  final RobuxBlocBloc _robuxBloc = RobuxBlocBloc();

  void dispose() {
    _robuxBloc.close();
  }

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());

      case "/info":
        return MaterialPageRoute(builder: (_) => const InfoPage());

      case "/home":
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _robuxBloc,
                  child: const HomeScreen(),
                ));

      case "/robux_generated":
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _robuxBloc,
                  child: const RobuxGeneratedPage(),
                ));

      case "/robux_generator":
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _robuxBloc,
                  child: const GeneratorScreen(),
                ));

      default:
        return null;
    }
  }
}
