
import 'package:flutter/material.dart';

class AppTheme{//diferentes propiedades estaticas y diseno
 static const Color primary = Colors.orange;
 static const Color secundary = Colors.deepOrangeAccent;
 //////
 static final ThemeData lightTheme = ThemeData.light().copyWith(
   primaryColor: Colors.orange,
   appBarTheme: const AppBarTheme(
     color: primary,
   elevation:0
 ),
     textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: AppTheme.secundary)
     )
 );

 static final ThemeData darkTheme = ThemeData.dark().copyWith(
     primaryColor: Colors.orange,
     appBarTheme: const AppBarTheme(
         color: primary,
         elevation:0
     ),
     scaffoldBackgroundColor: Colors.black,

 );
}