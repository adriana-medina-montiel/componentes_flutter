import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hola'),
      ),
      body : ListView(
        children:<Widget>[
          ListTile(
            title: Text(
              "entradas", 
              style: Apptheme.darkTheme.textTheme.headlineLarge,
            ),
            subtitle: Text('introduce valores ', style: Apptheme.darkTheme.textTheme.bodySmall),
            leading: const Icon(Icons.power_input),
            trailing: const Icon(Icons.arrow_circle_down),
          ),
          Divider(),
           ListTile (
            title: Text("listeview.builder ", 
            style: Apptheme.darkTheme.textTheme.headlineLarge,
            ),
            
            subtitle: Text('lista de scroll', style: Apptheme.darkTheme.textTheme.bodySmall),
            leading: const Icon(Icons.list),
            trailing: const Icon(Icons.arrow_circle_right_rounded),
          ),
          Divider(),
           ListTile(
            title: Text("notificaciones", style: Apptheme.darkTheme.textTheme.headlineLarge,),
            subtitle: Text('mostrar notificaciones', style: Apptheme.darkTheme.textTheme.bodySmall,),
            leading: const Icon(Icons.notification_add),
            trailing: const Icon(Icons.arrow_circle_right_rounded),
          )
        ],
      )
    );
  }
}