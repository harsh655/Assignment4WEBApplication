import 'package:flutter/material.dart';
import 'package:assignment_4_flutter/Helper/appConfig.dart';
import 'package:assignment_4_flutter/Screen/Calculator/calculator.dart';
import 'package:assignment_4_flutter/Screen/Weather/weather.dart';
import 'package:assignment_4_flutter/Screen/home_page/home_page.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {

  switch (settings.name)
  {
    case RouteConstant.homeScreen:
      return PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 300),
        settings: settings,
        pageBuilder: (context, animation, secondaryAnimation) => const HomeScreen(),
      );

    case RouteConstant.calculatorScreen:
      return PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 300),
        settings: settings,
        pageBuilder: (context, animation, secondaryAnimation) => const CalculatorScreen(),
      );

      case RouteConstant.weatherScreen:
      return PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 300),
        settings: settings,
        pageBuilder: (context, animation, secondaryAnimation) => const WeatherScreen(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings..name}'),
          ),
        ),
      );
  }

}