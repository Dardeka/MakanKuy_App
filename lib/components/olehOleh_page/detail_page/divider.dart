import 'package:flutter/material.dart';

class horizontalLine extends StatelessWidget {
  const horizontalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          height: 515,
          thickness: 2,
          color: Color.fromRGBO(68, 68, 68, 0.4),
        )
      ],
    );
  }
}
