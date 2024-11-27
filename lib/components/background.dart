import 'package:app_makankuy/theme.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 233),
        color: const Color.fromRGBO(124, 191, 15, 0.5),
      )
    );
  }
}