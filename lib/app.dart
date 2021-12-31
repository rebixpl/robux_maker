import 'package:flutter/material.dart';
import 'package:robux_maker/presentation/router/app_router.dart';
import 'package:robux_maker/presentation/ui/theme.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Robux Master",
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppTheme.scaffoldBackground,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }

  @override
  void dispose() {
    _appRouter.dispose();
    super.dispose();
  }
}
