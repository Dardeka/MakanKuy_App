import 'package:flutter/material.dart';
import 'package:app_makankuy/theme.dart';

class Poster extends StatefulWidget {
  const Poster({super.key});

  @override
  State<Poster> createState() => _PosterState();
}

class _PosterState extends State<Poster> {
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