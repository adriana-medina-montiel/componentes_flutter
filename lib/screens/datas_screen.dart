import 'package:flutter/material.dart';
import 'package:practica3/models/data.dart';
import 'package:practica3/screens/buildinScreen.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_scroll_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class DatasScreen extends StatefulWidget {
  final Data datos;
  const DatasScreen({super.key, required this.datos});

  @override
  State<DatasScreen> createState() => _DatasScreenState();
}

class _DatasScreenState extends State<DatasScreen> {
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
        title: const Text('Datos'),
      ),
      body : ListView(
        children: [
          ListTile(
              title: Text('nombre:',
              style: Apptheme.darkTheme.textTheme.headlineMedium,
              ),
              subtitle: Text(
                widget.datos.nombre!,
                style: Apptheme.darkTheme.textTheme.headlineLarge,
              ),
          ),
          const Divider(),
          ListTile(
            
            title: Text('Bienvenido ${widget.datos.nombre}',
            style: Apptheme.darkTheme.textTheme.headlineLarge,
             textAlign: TextAlign.center
            
            ),
            subtitle: Text(
              "",
              style: Apptheme.darkTheme.textTheme.headlineLarge,

            ),
            trailing: ElevatedButton(
              onPressed: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => BuildinScreen()));
              },
              child: Text('Entrar'),
            ),
            
          ),
          
          ],
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Si, le gusta flutter',
        style: Apptheme.darkTheme.textTheme.headlineLarge,),
        
      ],
    );
  }

  Column entradaSlider(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
         Text('a el le gusta flutter un 10%',
         style: Apptheme.darkTheme.textTheme.headlineLarge,),
       
      ],
    );
  }
  Column entradaRadio(){
    return Column(
      children: [
         Text('¿el prefiere Kotlin para desarrollo movil',
        style: Apptheme.darkTheme.textTheme.headlineLarge,
        ),
       
    ],
    );
  }
  Row entradasCheck(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         Text('El usa para emular el navegador',
        style: Apptheme.darkTheme.textTheme.headlineLarge,
         ),
        
        
      ],
    );
  }
}
 