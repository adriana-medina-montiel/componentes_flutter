import 'package:flutter/material.dart';
import 'package:practica3/screens/infinite_scroll_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class HomeScreeen extends StatelessWidget {
  const HomeScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('companentes de flutter'),
      ),
      body: ListView(
        children:  <Widget>[
          ListTile(
            title: Text('Entradas', 
            style: Apptheme.darkTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Introduciendo valores',
            style: Apptheme.darkTheme.textTheme.bodySmall,
            ),
            leading: IconTheme(
              data: Apptheme.darkTheme.iconTheme,
              child: const Icon(Icons.input),
              ),
            trailing:IconTheme(
              data: Apptheme.darkTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right_rounded),
              ),
              onTap: () {
              final ruta1 = MaterialPageRoute(builder: (context){
                return const InputScreen();
              });
              Navigator.push(context, ruta1);
            },
          ),
          const Divider(),
           ListTile(
            title: Text('Listview.builder',
            style: Apptheme.darkTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Lista con scroll infinito',
            style: Apptheme.darkTheme.textTheme.bodySmall,
            ),
            leading: IconTheme(
              data: Apptheme.darkTheme.iconTheme,
              child: const Icon(Icons.input),
              ),
            trailing:IconTheme(
              data: Apptheme.darkTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right_rounded),
              ),
              onTap: () {
              final ruta1 = MaterialPageRoute(builder: (context){
                return const InfiniteScrollScreen();
              });
              Navigator.push(context, ruta1);
            },
          ),
          const Divider(),
          ListTile(
            title: Text('Notificaciones',
            style: Apptheme.darkTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('Mostrar una notificación',
            style: Apptheme.darkTheme.textTheme.bodySmall,
            ),
            leading: IconTheme(
              data: Apptheme.darkTheme.iconTheme,
              child: const Icon(Icons.input),
              ),
            trailing:IconTheme(
              data: Apptheme.darkTheme.iconTheme,
              child: const Icon(Icons.arrow_circle_right_rounded),
              ),
              onTap: () {
              final ruta1 = MaterialPageRoute(builder: (context){
                return const NotifacationsScreen();
              });
              Navigator.push(context, ruta1);
            },
          ),
        ],
      ),
    );
  }
}