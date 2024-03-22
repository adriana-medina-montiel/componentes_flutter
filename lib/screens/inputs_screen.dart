import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica3/models/data.dart';
import 'package:practica3/screens/datas_screen.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_scroll_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';


class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String? nombre;
  bool switchValue = false;
  double sliderValue = 0.0;
  String? radioSelected;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  int indexNavigation = 0;

  openScreen(int index, BuildContext context){
    MaterialPageRoute ruta = MaterialPageRoute(builder: (context) => const HomeScreeen());
    switch(index){
      case 0 :
      ruta = MaterialPageRoute(builder: (context) => const HomeScreeen());
      break;
      case 1 :
      ruta = MaterialPageRoute(builder: (context) => const InfiniteScrollScreen());
      case 2 :
      ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
      break;
      case 3 :
      ruta = MaterialPageRoute(builder: (context) => const NotifacationsScreen());
      case 4://compartimiento aplicable solo en celular
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      break;
    }
    setState(() {
      indexNavigation = index;
      Navigator.push(context, ruta);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       title: const Text('Bienvenido'),
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
              '¿que opinas de CleanPro?',
              style: Apptheme.darkTheme.textTheme.headlineMedium,
            ),
            entradasCheck(),
            ElevatedButton(
              onPressed: () {
                               Data data = Data(nomb: nombre!, gusto: switchValue, calif: sliderValue.round(), moviD: radioSelected!, nav: isChecked1, emul: isChecked2, phone: isChecked3);
                               Navigator.push(context, MaterialPageRoute(builder: (context) => DatasScreen(datos: data,)));
                            },
                            child: const Text ('guardar'),
              )
              ],
            )
          
        ),
        bottomNavigationBar: BottomNavigationBar( 
          currentIndex: indexNavigation,
          backgroundColor: Color.fromARGB(248, 0, 0, 0),
          unselectedItemColor: Apptheme.primaryColor,
          selectedItemColor: const Color.fromARGB(255, 100, 98, 91),
          onTap: (index) => openScreen(index, context),
          items: const [BottomNavigationBarItem(icon: Icon(Icons.home), label: 'inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Lista'),
        BottomNavigationBarItem(icon: Icon(Icons.notification_add), label: 'notificaciones'),
        BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Imagenes'),
        BottomNavigationBarItem(icon: Icon(Icons.exit_to_app), label: 'salir'),]),
    );

  }

  TextField entradaNombre() {
    return TextField(
          style: Apptheme.darkTheme.textTheme.headlineMedium,
          decoration: InputDecoration(
            border:const UnderlineInputBorder(),
            labelText: 'Escribe tu nombre',
            labelStyle: Apptheme.darkTheme.textTheme.headlineMedium,
            ),
            onChanged: (text) => nombre = text,
        );
  }

  Row entradaSwitch(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text('¿Eres parte de la universidad?',
        style: Apptheme.darkTheme.textTheme.headlineMedium,),
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
        Text('indica que tan satisfecho te encuentras con el servicio de limpieza:',
        style: Apptheme.darkTheme.textTheme.headlineMedium,),
        Slider(min:0.0,
         max:20,
         
         activeColor: Color.fromARGB(248, 72, 180, 230),
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
        Text('¿Cual es el edificio que mas usas?',
        style: Apptheme.darkTheme.textTheme.headlineMedium,
        ),
        ListTile(
          title: Text('biblioteca',
          style: Apptheme.darkTheme.textTheme.headlineSmall,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value:'Edificio P',
              groupValue: radioSelected,
              onChanged: (value){
                setState(() {
                  radioSelected = value!;
                
                });
              },
            ),
          ),
        ),
        ListTile(
          title: Text('Cafeteria',
          style: Apptheme.darkTheme.textTheme.headlineSmall,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value:'bueno',
              groupValue: radioSelected,
              onChanged: (value){
                setState(() {
                  radioSelected = value!;
                
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
        Text('Regular',
        style: Apptheme.darkTheme.textTheme.headlineSmall,
        ),
        Transform.scale(
          scale: 1.5,
          child: Checkbox(value: isChecked1,onChanged: (value){
            setState(() {
              isChecked1 = value!;
            });
          })
        ),
        Text('Malo',
        style: Apptheme.darkTheme.textTheme.headlineSmall,
        ),
        Transform.scale(
          scale: 1.5,
          child: Checkbox(value: isChecked2,onChanged: (value){
            setState(() {
              isChecked2 = value!;
            });
          })
        ),

        Text('pasable',
        style: Apptheme.darkTheme.textTheme.headlineSmall,
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