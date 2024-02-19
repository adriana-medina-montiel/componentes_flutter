//definicion de los temas
import 'package:flutter/material.dart';

class Apptheme{
  //constante de color primario
  static const primaryColor = Color.fromARGB(248, 0, 0, 0);
  static const backColor = Color.fromARGB(248, 1, 0, 0);
 //constante de theme
 static final ThemeData darkTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: backColor,
      appBarTheme: const AppBarTheme(color: primaryColor),
 );
}