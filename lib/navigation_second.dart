import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color = Colors.white;
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(title: Text("Navigation Second Screeen Wildan")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                color = Colors.red.shade700;
                Navigator.pop(context, color);
              },
              child: const Text("Red"),
            ),
            ElevatedButton(
              onPressed: () {
                color = Colors.yellow.shade700;
                Navigator.pop(context, color);
              },
              child: const Text("Yellow"),
            ),
            ElevatedButton(
              onPressed: () {
                color = Colors.green.shade700;
                Navigator.pop(context, color);
              },
              child: const Text("Green"),
            ),
          ],
        ),
      ),
    );
  }
}