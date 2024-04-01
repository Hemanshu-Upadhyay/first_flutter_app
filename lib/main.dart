import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HelloWorldPage(),
    );
  }
}

class HelloWorldPage extends StatefulWidget {
  const HelloWorldPage({super.key});

  @override
  _HelloWorldPageState createState() => _HelloWorldPageState();
}

class _HelloWorldPageState extends State<HelloWorldPage> {
  Color _textColor = Colors.black;

  void _changeColor() {
    setState(() {
      // Generate a random color
      _textColor =
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World App'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: GestureDetector(
        onTap: () {
          _changeColor();
        },
        child: Center(
          child: Text(
            'Hello World',
            style: TextStyle(
              fontSize: 24.0,
              color: _textColor,
            ),
          ),
        ),
      ),
    );
  }
}
