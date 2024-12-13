import 'package:app_makankuy/components/olehOleh_page/detail_page/divider.dart';
import 'package:app_makankuy/components/olehOleh_page/detail_page/shop_header.dart';
import 'package:flutter/material.dart';
import 'package:app_makankuy/theme.dart';

class shopDetail extends StatelessWidget {
  const shopDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(163, 210, 87, 0.9),
        body: Stack(
          children: [
            headerApp(),
            Positioned(top: 45, right: 21.5,  child: Image.asset('assets/images/Ragusa-big.png')),
            horizontalLine()
          ],
        ));
  }
}
