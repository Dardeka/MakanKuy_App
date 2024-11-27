import 'package:flutter/material.dart';
import 'package:app_makankuy/theme.dart';

class Poster extends StatelessWidget {
  const Poster({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(color: black),
            child: Row(
              children: [
                Image.asset('assets/images/poster daerah.png')
              ],
            ),
          ),
        ],
      ),
    );
  }
}