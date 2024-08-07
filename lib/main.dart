import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greeting App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Greeting App'),
        ),
        body: const GreetingPage(),
      ),
    );
  }
}

class GreetingPage extends StatelessWidget {
  const GreetingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Hello, World!',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const Text(
            'Welcome to Flutter!',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Image.network(
            'https://flutter.dev/images/flutter-logo-sharing.png',
            height: 100,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              const snackBar = SnackBar(content: Text('Button Pressed!'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: const Text('Press Me'),
          ),
        ],
      ),
    );
  }
}
