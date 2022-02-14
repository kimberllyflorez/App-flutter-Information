import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'albus',
    'Hermaione',
    'Harry potter',
    'severus',
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.indigo,
        titleTextStyle: const TextStyle(fontSize: 30),
        title: const Center(child: Text(' second list screen ')),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: AppTheme.secundary,
          ),
          onTap: () {
            final option = options[index];
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: options.length,
      ),
    );
  }
}
