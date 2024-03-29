import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
   bool switchValue = false;
  double sliderValue = 0.0;
  int radioSelected = 0;
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
      ruta = MaterialPageRoute(builder: (context) => const HomeScreeen());
      break;
      case 3 :
      ruta = MaterialPageRoute(builder: (context) => const NotifacationsScreen());
      case 4:
      ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
    }
    setState(() {
      indexNavigation = index;
      Navigator.push(context, ruta);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll'),
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
            // Text(
            //   '¿que usas para correr tus apps?',
            //   style: Apptheme.darkTheme.textTheme.headlineLarge,
            // ),
            entradasCheck(),
            
            //const ElevatedButton(onPressed: null, child: Text('guardar',))
              ],
            )
          
        ),
        bottomNavigationBar: BottomNavigationBar( 
          currentIndex: indexNavigation,
          backgroundColor: Apptheme.backColor,
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
        
        );
  }

  Row entradaSwitch(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
      
      ],
    );
  }

  Column entradaSlider(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
      
      ],
    );
  }
  Column entradaRadio(){
    return Column(
      children: [
     
    ],
    );
  }
  Row entradasCheck(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        
      ],
    );
  }
}