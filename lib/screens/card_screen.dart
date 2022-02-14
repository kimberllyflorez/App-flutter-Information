import 'package:fl_components/widgets/Custom_cards.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
        children: const [
          CustomCards(
            labelTitle: 'CATS',
            labelTextDescription:
                'Felis catus has had a very long relationship '
                'with humans. Ancient Egyptians may have first domesticated '
                'cats as early as 4,000 years ago. ',
            imagenCard: 'https://creazilla-store.fra1.digitaloceanspaces.com/'
                'cliparts/19446/cartoon-cat-face-clipart-xl.png',
          ),
          CustomCards(
            labelTitle: 'CATS',
            labelTextDescription:
                'Felis catus has had a very long relationship '
                'with humans. Ancient Egyptians may have first domesticated '
                'cats as early as 4,000 years ago. ',
            imagenCard: 'https://creazilla-store.fra1.digitaloceanspaces.com/'
                'cliparts/19446/cartoon-cat-face-clipart-xl.png',
          )
        ],
      ),
    );
  }
}
