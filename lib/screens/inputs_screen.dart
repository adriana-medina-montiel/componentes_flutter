import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment : MainAxisAlignment.center,
      children: [
        Text ('entradas', style: Apptheme.darkTheme.textTheme.headlineLarge,
        
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(onPressed: null, child: Text('regresar', style: Apptheme.darkTheme.textTheme.bodySmall,)),

            ElevatedButton(onPressed: null, child: Text('regresar', style: Apptheme.darkTheme.textTheme.bodySmall,))
          ],
        )
      ],
    );
  }
}