import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  final String name;

  const CustomCardType1({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(name),
            subtitle: const Text('my cat have 2 year, it is black'),
            leading: const Icon(
              Icons.credit_card,
              color: AppTheme.primary,
            ),
          )
        ],
      ),
    );
  }
}
