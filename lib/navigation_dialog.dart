import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(title: const Text('Navigation Dialog Screen Zidane')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showColorDialog(context);
          },
          child: const Text("Change Color"),
        ),
      ),
    );
  }

  Future<void> _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very Important Question'),
          content: const Text('Do you want to change the color?'),
          actions: [
            TextButton(
              onPressed: () {
                color = Colors.red.shade700;
                Navigator.pop(context, Colors.red);
              },
              child: const Text('Red'),
            ),
            TextButton(
              onPressed: () {
                color = Colors.yellow.shade700;
                Navigator.pop(context, Colors.yellow);
              },
              child: const Text('Yellow'),
            ),
            TextButton(
              onPressed: () {
                color = Colors.green.shade700;
                Navigator.pop(context, Colors.green);
              },
              child: const Text('Green'),
            ),
          ],
        );
      },
    );

    setState(() {});
  }
}