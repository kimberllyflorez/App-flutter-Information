import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  final options = const ['albus','Hermaione', 'Harry potter','severus',  ];

  const ListviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          titleTextStyle:const TextStyle(fontSize:30 ),
          title: const Center(
              child: Text(' First list screen ')),
            ),
        body: ListView(
          children: [
            ...options.map((games) => ListTile(
                title: Text(games),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              )
            ).toList(),
           ],
        ));
  }
}
