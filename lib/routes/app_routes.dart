import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'Splash';
  static Map<String, Widget Function(BuildContext)> routes = {
    'Splash': (BuildContext context) => const Splash(),
    'Home': (BuildContext context) => const HomeScreen(),
    'Search': (BuildContext context) => const Search(),
    'Library': (BuildContext context) => const Library(),


  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ErrorScreen(),
    );
  }
}
