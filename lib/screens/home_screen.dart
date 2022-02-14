import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';



class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOption;

    return  Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Componentes de Flutter', textAlign: TextAlign.center),

      ),
      body: ListView.separated(

          itemBuilder: (context, i)=> ListTile(
            leading: Icon(menuOptions[i].icon, color: AppTheme.primary),//, color: Colors.purple,
            title: Text(menuOptions[i].name),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.deepOrange),
            onTap: (){
              final route = MaterialPageRoute(builder: (context)=> const AlertScreen());
              Navigator.pushNamed(context, menuOptions[i].routes);
            },
          ),
          separatorBuilder: (_,__) =>const Divider(),
          itemCount:menuOptions.length,
      )
    );
  }

}

//NAVEGADORES DE PANTALLAS////

//final route = MaterialPageRoute(
//                 builder: (context)=> const ListviewScreen());
//                 Navigator.push(context, route);

//navegator.pus`h (ontext, 'alert')