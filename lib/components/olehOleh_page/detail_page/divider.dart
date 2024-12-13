import 'package:flutter/material.dart';

class horizontalLine extends StatelessWidget {
  const horizontalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          height: 530,
          thickness: 2,
          color: Color.fromRGBO(117, 117, 117, 1),
        )
      ],
    );
  }
}
