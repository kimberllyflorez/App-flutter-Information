import 'package:flutter/material.dart';
import 'package:fl_components/models/menu_options.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes{
  //propiedades y metodos estatilos que se pueden acceder sin necesidad de instanciar la clase
  //poner algo de manera global

  static const initialRoute = 'Home';//el que aparece en pantalla llanado main

  static final menuOption = <MenuOptions>[// MenuOptiom seran las opciones de menu
    //TODO. BORRAR HOME
    MenuOptions(routes: 'Home', name:'Home Screen'  , screen:  const HomeScreen(),  icon:Icons.home),
    MenuOptions(routes: 'listview1', name:'list view1' , screen:  const ListviewScreen(),  icon:Icons.ac_unit_outlined),
    MenuOptions(routes: 'listview2', name:'list view2', screen:  const Listview2Screen() ,  icon:Icons.games),
    MenuOptions(routes: 'alert', name:'Alert', screen:  const AlertScreen() ,  icon:Icons.accessible_forward),
    MenuOptions(routes: 'card', name:'Card' , screen:  const Cards(),  icon:Icons.credit_card),
    MenuOptions(routes: 'cardStatic', name: 'CardStatics', screen: const CardScreenStatic(), icon: Icons.pets)

  ];



      //creando un metodo que va a devolverme un mapa - llave un string
      // que apunta a una funcion que recibe Build context regresa Widget

    static Map<String, Widget Function (BuildContext)> GetAppRoutes(){
      Map<String, Widget Function (BuildContext)> appRoutes={};//igual a obj vacio
        for (final option in menuOption){
          appRoutes.addAll({option.routes: (BuildContext context) =>  option.screen});//nombre y funcion
      }

      return appRoutes;
}

    //static Map<String, Widget Function(BuildContext)>routes ={
  //'Home'     : (_) => HomeScreen(),
  //'listView2' : (_) => Listview2Screen(),
  //'listView1': (_) => ListviewScreen(),
  //'alert'    : (_) => AlertScreen(),
  //'card'     : (_) => CardScreen(),
 // };
    static Route<dynamic>onGenerateRoute (RouteSettings settings){
          return MaterialPageRoute(
           builder: (context)=> const AlertScreen(),
    );
  }
}