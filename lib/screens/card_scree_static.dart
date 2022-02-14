import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreenStatic extends StatelessWidget {
  const CardScreenStatic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('example the card static'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:const  [
              CardItem(),
              CardItem(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:const  [
              CardItem(),
              CardItem(),
            ],
          ),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.deepOrange,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children:[
            Icon(Icons.pets_rounded),
            Column(
              children: [
                Text('asfgsfdgsdfgd'),
                Text('asdgdfgsdfgdd'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
