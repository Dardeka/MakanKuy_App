import 'package:flutter/material.dart';
import 'package:app_makankuy/theme.dart';

class mainFeature extends StatelessWidget {
  const mainFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 41, top: 26, right: 41),
      decoration: BoxDecoration(color: palYel),
      child: Row(
        children: [
          // Oleh-oleh
          Container(
            padding: const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 19),
            child: Column(
              children: [
                Image.asset('assets/images/besek-jajanan-removebg-preview_enhanced.png', width: 45, height: 100,),
                Text('Oleh-Oleh'),
                Text('Khas Daerah')
              ],
            ),
          ),
          // Makanan
          Container(),
          // Minuman
          Container()
        ],
      ),
    );
  }
}
