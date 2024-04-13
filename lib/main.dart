import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo app',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black, // Set scaffold background color here
      ),
    );
  }
}