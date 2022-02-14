import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCards extends StatelessWidget {
  final String labelTitle;
  final String labelTextDescription;
  final String imagenCard;

  const CustomCards({
    Key? key,
    required this.labelTitle,
    required this.imagenCard,
    required this.labelTextDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
      color: Colors.orangeAccent,
      child: Row(

        children: [
          SizedBox(
            height: 100,
            width: 150,
            child: FadeInImage(
              placeholder: AssetImage('assets/cats-loading.gif'),
              image: NetworkImage(imagenCard),
              width: double.infinity,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(seconds: 5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(labelTitle, style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 80,
                  width: 200,
                  child:Flexible(child: Text(labelTextDescription,overflow: TextOverflow.fade)),),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: () {}, child: Text('cancel')),
                      TextButton(onPressed: () {}, child: Text('ok')),
              ],
            ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}


