import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImagesScreen> {
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
              image: AssetImage('assets/img/limp.jpg')
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
      child: Image.network('https://png.pngtree.com/png-clipart/20190330/ourlarge/pngtree-cartoon-cow-black-and-white-hand-painted-elements-png-image_893878.jpg'),
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
           image: 'https://png.pngtree.com/png-clipart/20190330/ourlarge/pngtree-cartoon-cow-black-and-white-hand-painted-elements-png-image_893878.jpg'),),
      ],
    );
  }
}