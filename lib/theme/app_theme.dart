//definicion de los temas
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Apptheme{
  //constante de color primario
  static const primaryColor = Color.fromARGB(248, 0, 0, 0);
  static const secondaryColor = Color.fromARGB(248, 255, 255, 255);
  static const backColor = Color.fromARGB(248, 255, 255, 255);
 //constante de theme
 static final ThemeData darkTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: backColor,
      appBarTheme:  AppBarTheme(
        color: primaryColor,
        titleTextStyle: GoogleFonts.lato(
          color:Colors.amber,
          fontSize: 28.5,
          fontWeight: FontWeight.bold,
           ),
        ),
 iconTheme: const IconThemeData(
  color: primaryColor,
  size: 35.0,
 ),
 elevatedButtonTheme: ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(
      primaryColor,
    ),
    foregroundColor: MaterialStateProperty.all(
      Colors.white,
    ),
   textStyle: MaterialStateProperty.all(
    GoogleFonts.pacifico(fontSize: 25.0,)
   ),
  ),
 ),
 textTheme: TextTheme(
  headlineLarge: GoogleFonts.acme(
    color: primaryColor,
    fontSize: 26.5,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.italic,
    decoration: TextDecoration.underline,
    decorationColor: primaryColor,
    decorationStyle:TextDecorationStyle.dashed,
    decorationThickness: 1.0
  ),
  headlineMedium: GoogleFonts.montserrat(
    color: secondaryColor,
    fontSize: 21.2,
    fontWeight: FontWeight.bold,
  ),
   //estilo para texto muy pequeño
    bodySmall: GoogleFonts.aldrich(
      color: secondaryColor,
      fontSize: 16.0,
    )
 ),

 );
}