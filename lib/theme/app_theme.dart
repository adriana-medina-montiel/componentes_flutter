//definicion de los temas
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Apptheme{
  //constante de color primario
  static const primaryColor = Color.fromARGB(248, 1, 1, 1);
  static const secondaryColor = Color.fromARGB(248, 255, 52, 52);
  static const backColor = Color.fromARGB(248, 255, 255, 255);
 //constante de theme
 static final ThemeData darkTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: backColor,
      appBarTheme: const AppBarTheme(color: primaryColor),
 
 textTheme: TextTheme(
  headlineLarge: GoogleFonts.abrilFatface(
    color: primaryColor,
    fontSize: 26.5,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.italic,
    decoration: TextDecoration.underline,
    decorationColor: primaryColor,
    decorationStyle:TextDecorationStyle.dashed,
    decorationThickness: 1.0
  ),
   //estilo para texto muy pequeño
    bodySmall: GoogleFonts.aldrich(
      color: secondaryColor,
      fontSize: 16.0,
    )
 ),

 );
}