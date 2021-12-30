import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robux_maker/logic/makerstate/makerstate_bloc.dart';
import 'package:robux_maker/presentation/screens/welcome_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Robux Master",
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: const Color(0xFFF2F4F5),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider<MakerstateBloc>(
        create: (context) => MakerstateBloc(),
        child: const WelcomeScreen(),
      ),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const AnnotatedRegion<SystemUiOverlayStyle>(
//       value: SystemUiOverlayStyle.light,
//       child: Scaffold(
//         body: SafeArea(
//           child: Center(
//             child: Padding(
//               padding: EdgeInsets.all(31.0),
//               child: Text("Robux Master"),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
