import 'dart:async';
import 'package:flutter/material.dart';
import 'Helper/appConfig.dart';
import 'Helper/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  void initState() {
    splashScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
            width: MediaQuery.of(context).size.width / 2,
            height: 400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/splash.jpeg"),
              ),
            ),
          ),
            const SizedBox(height: 10),
            const Text("Welcome to Assignment 4"),
      ]
        ),
      ),
    );
  }
  void splashScreen()
  {
    Future.delayed(const Duration(seconds: 6),
            () => Navigator.popAndPushNamed(context, RouteConstant.homeScreen));
  }
}
