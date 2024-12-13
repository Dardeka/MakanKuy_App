import 'package:flutter/material.dart';
import 'package:app_makankuy/theme.dart';

class headerOlehOleh extends StatelessWidget {
  const headerOlehOleh({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 19, bottom: 19, left: 12, right: 12),
      padding: const EdgeInsets.all(19),
      decoration: const BoxDecoration(color: Colors.yellow),
      child: Row(
        children: [
          Text('Oleh-Oleh Khas Daerah', style: bold12.copyWith(color: white),)
        ],
      ),
    );
  }
}