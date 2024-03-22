import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/infinite_scroll_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImagesScreen> {
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
    return Scaffold( appBar: AppBar( 
      title: const Text('imagenes'),
      ),
      body: ListView(
        children: [
         cardImage1(),
         ImageFade()
        ],
      )
      );
  }
  Card cardImage1(){
    return Card(
      shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
        margin: const EdgeInsets.all(16),
        elevation: 10,
    
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Column(
          children: [ 
          const SizedBox(
            height: 350.0,
            width: 350.0,
            child: Image(
              image: AssetImage('assets/img/baño.jpeg')
            ),
          ),
          Container(
              padding:const EdgeInsets.all(10),
              child: Text(
                'Clean Pro',
                style: Apptheme.darkTheme.textTheme.headlineMedium,
              ),
            )
       ]
          ),
        ),
      );
  }
  SizedBox image2(){
    return SizedBox(
      height: 200.0,
      width: 100.0,
      child: Image.network('https://fotografias-neox.atresmedia.com/clipping/cmsimages02/2022/05/12/D7B029F9-EF15-4416-83FA-84AF6949274C/jujutsu-kaisen-0_98.jpg?crop=1429,804,x248,y0&width=1900&height=1069&optimize=high&format=webply'),
    );

  }
  Stack ImageFade(){
    return Stack( 
      children: <Widget> [
        Center(
          child: CircularProgressIndicator(),
        ),
        Center(child: FadeInImage.memoryNetwork(
           placeholder: kTransparentImage,
           image: 'https://fotografias-neox.atresmedia.com/clipping/cmsimages02/2022/05/12/D7B029F9-EF15-4416-83FA-84AF6949274C/jujutsu-kaisen-0_98.jpg?crop=1429,804,x248,y0&width=1900&height=1069&optimize=high&format=webply'),),
      ],
    );
  }

  
}