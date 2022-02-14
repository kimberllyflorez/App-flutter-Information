import 'package:flutter/material.dart' show IconData, Widget;

//gets
class MenuOptions {

  final String routes; //nombre de la ruta que quiera0
  final IconData icon; //icono exportado de material
  final String name; //nombre de la ruta que quiera
  final Widget screen;

  MenuOptions({
    required this.routes,
    required this.icon,
    required this.name,
    required this.screen,
  }); //esta sera la pantalla que quiera monstrar
}

//cuando son finals de debe crear un constructor
