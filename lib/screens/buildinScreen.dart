import 'package:flutter/material.dart';

class BuildinScreen extends StatefulWidget {
  const BuildinScreen({super.key});

  @override
  State<BuildinScreen> createState() => _BuildinScreenState();
}

class _BuildinScreenState extends State<BuildinScreen> {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estado de los Baños',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color.fromARGB(255, 104, 129, 150), // Fondo color azul del cuerpo
      ),
      home: BathroomStatusScreen(),
    );
  }
}

class BathroomStatusScreen extends StatefulWidget {
  @override
  _BathroomStatusScreenState createState() => _BathroomStatusScreenState();
}

class _BathroomStatusScreenState extends State<BathroomStatusScreen> {
  
  List<Bathroom> bathrooms = [
    Bathroom(name: "Edificio P", occupied: true),
    Bathroom(name: "Biblioteca", occupied: false),
    Bathroom(name: "Edificio C", occupied: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estado de los Baños'),
        backgroundColor: Color.fromARGB(255, 8, 8, 8), 
      ),
      body: ListView.builder(
        itemCount: bathrooms.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              bathrooms[index].name,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0), 
              ),
            ),
            subtitle: bathrooms[index].occupied
                ? const Text(
                    'Ocupado',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18.0,
                    ),
                  )
                : const Text(
                    'Disponible',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18.0,
                    ),
                  ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar( 
        backgroundColor: Color.fromARGB(255, 1, 7, 12),
        selectedItemColor: const Color.fromARGB(255, 11, 11, 11), // Color del ítem seleccionado
        unselectedItemColor: Color.fromARGB(255, 207, 200, 200), // Color del ítem no seleccionado
        currentIndex: 0, // Índice seleccionado inicialmente
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Lista'),
          BottomNavigationBarItem(icon: Icon(Icons.notification_add), label: 'Notificaciones'),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Imágenes'),
          BottomNavigationBarItem(icon: Icon(Icons.exit_to_app), label: 'Salir'),
        ],
      ),
    );
  }
}

class Bathroom {
  final String name;
  final bool occupied;

  Bathroom({required this.name, required this.occupied});
}
