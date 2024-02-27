import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';


class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  bool switchValue = false;
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       title: const Text('Entradas'),
      ),
      body: Column(
        mainAxisAlignment : MainAxisAlignment.spaceEvenly,
        children: [
          Text ('Entradas', style: Apptheme.darkTheme.textTheme.headlineLarge,
          
          ),
          entradaNombre(),
          entradaSwitch(),
          entradaSlider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: null, child: Text('Regresar', style: Apptheme.darkTheme.textTheme.bodySmall,)),
      
              ElevatedButton(onPressed: null, child: Text('Ventana de datos', style: Apptheme.darkTheme.textTheme.bodySmall,))
            ],
          )
        ],
      ),
    );
  }

  TextField entradaNombre() {
    return TextField(
          style: Apptheme.darkTheme.textTheme.headlineMedium,
          decoration: InputDecoration(
            border:const UnderlineInputBorder(),
            labelText: 'escribe tu nombre',
            labelStyle: Apptheme.darkTheme.textTheme.headlineLarge,
            ),
        );
  }

  Row entradaSwitch(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text('te gusta flutter',
        style: Apptheme.darkTheme.textTheme.headlineLarge,),
        Switch(
          value: switchValue,
          onChanged: (value){
            setState(() {
              switchValue = value;
            });
          },
        )
      ],
    );
  }

  Column entradaSlider(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Text('indica que tanto te gusta Flutter:',
        style: Apptheme.darkTheme.textTheme.headlineLarge,),
        Slider(min:0.0,
         max:10,
         
         activeColor: Apptheme.secondaryColor,
         thumbColor: Apptheme.primaryColor,
         inactiveColor: Apptheme.backColor,
         value: sliderValue,
         divisions: 10,
         label: '${sliderValue.round()}',
         onChanged: (value){
          setState(() {
            sliderValue = value;
            print("se cambio el slider: $sliderValue");
          });
        })
      ],
    );
  }
}