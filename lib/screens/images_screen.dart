import 'package:flutter/material.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar( 
      title: const Text('imagenes'),
      ),
      body: const Column(
        children: [
          Image(
            image: AssetImage('assets/img/hola.jpg')
          )
        ],
      )
      );
  }
}