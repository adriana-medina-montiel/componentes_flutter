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
        children: const <Widget>[
          ListTile(
            title: Text("los yankees de new york se enfrentaran con un equipo en la ciudad"),
            subtitle: Text('en junio '),
            leading: Icon(Icons.casino),
            trailing: Icon(Icons.arrow_circle_down),
          ),
          Divider(),
          ListTile(
            title: Text("los boletos se encuentran agotados "),
            subtitle: Text('en tan solo 2 dias'),
            leading: Icon(Icons.price_check_sharp),
            trailing: Icon(Icons.arrow_circle_right_rounded),
          ),
          Divider(),
           ListTile(
            title: Text("los yankees de new york se enfrentaran con un equipo en la ciudad"),
            subtitle: Text('en junio '),
            leading: Icon(Icons.beach_access),
            trailing: Icon(Icons.arrow_circle_right_rounded),
          )
        ],
      )
    );
  }
}