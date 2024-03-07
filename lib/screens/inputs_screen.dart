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
  int radioSelected = 0;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       title: const Text('Entradas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment : MainAxisAlignment.spaceEvenly,
          children: [
           
            entradaNombre(),
            entradaSwitch(),
            entradaSlider(),
            entradaRadio(),
            Text(
              '¿que usas para correr tus apps?',
              style: Apptheme.darkTheme.textTheme.headlineLarge,
            ),
            entradasCheck(),
            
            const ElevatedButton(onPressed: null, child: Text('guardar',))
              ],
            )
          
        ),
        bottomNavigationBar: BottomNavigationBar( items: const [BottomNavigationBarItem(icon: Icon(Icons.home), label: 'inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.data_exploration), label: 'Datos')]),
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
         
         activeColor: const Color.fromARGB(248, 60, 54, 54),
         thumbColor: Apptheme.primaryColor,
         inactiveColor: const Color.fromARGB(248, 66, 60, 60),
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
  Column entradaRadio(){
    return Column(
      children: [
        Text('¿que prefieres para desarrollo movil?',
        style: Apptheme.darkTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title: Text('kotlin',
          style: Apptheme.darkTheme.textTheme.headlineSmall,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value:1,
              groupValue: radioSelected,
              onChanged: (value){
                setState(() {
                  radioSelected = value!;
                print('seleccionado el boton radio: $radioSelected');
                });
              },
            ),
          ),
        ),
        ListTile(
          title: Text('Flutter',
          style: Apptheme.darkTheme.textTheme.headlineSmall,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value:2,
              groupValue: radioSelected,
              onChanged: (value){
                setState(() {
                  radioSelected = value!;
                print('seleccionado el boton radio: $radioSelected');
                });
              },
            ),
          ),
        )

    ],
    );
  }
  Row entradasCheck(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Navegador',
        style: Apptheme.darkTheme.textTheme.bodySmall,
        ),
        Transform.scale(
          scale: 1.5,
          child: Checkbox(value: isChecked1,onChanged: (value){
            setState(() {
              isChecked1 = value!;
            });
          })
        ),
        Text('Emuladorr',
        style: Apptheme.darkTheme.textTheme.bodySmall,
        ),
        Transform.scale(
          scale: 1.5,
          child: Checkbox(value: isChecked2,onChanged: (value){
            setState(() {
              isChecked2 = value!;
            });
          })
        ),

        Text('Smatphone',
        style: Apptheme.darkTheme.textTheme.bodySmall,
        ),
        Transform.scale(
          scale: 1.5,
          child: Checkbox(value: isChecked3,onChanged: (value){
            setState(() {
              isChecked3 = value!;
            });
          })
        ),
        
      ],
    );
  }
}