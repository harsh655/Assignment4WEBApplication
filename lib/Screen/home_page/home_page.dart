import 'package:flutter/material.dart';
import 'package:assignment_4_flutter/Helper/appConfig.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.popAndPushNamed(context, RouteConstant.calculatorScreen);
              },
              child: const Text('Calculator'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.popAndPushNamed(context, RouteConstant.weatherScreen);
              },
              child: const Text('Weather'),
            ),
          ],
        ),
      ),
    );
  }
}
