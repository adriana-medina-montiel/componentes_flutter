import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hola'),
      ),
      body : ListView(
        children: const [
          Text('hola con flutter'),
          Text('hola con flutter'),
          Text('hola con flutter'),
          Text('hola con flutter'),
          Text('hola con flutter'),
          Text('hola con flutter'),
          Text('hola con flutter'),
          Text('hola con flutter'),
          Text('hola con flutter'),
          Text('hola con flutter'),
          Text('hola con flutter'),
        ]
      )
    );
  }
}