import 'package:flutter/material.dart';
import 'package:app_makankuy/theme.dart';

class mainFeature extends StatelessWidget {
  const mainFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 43, top: 21),
      // decoration: BoxDecoration(color: palYel),
      child: Row(
        children: [
          Container(
            width: 298,
            height: 90,
            // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                // Oleh-oleh
                Container(
                  padding: const EdgeInsets.only(left: 8, top: 2, right: 8, bottom: 2),
                  decoration: BoxDecoration(color: grey, border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.3)),borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Image.asset('assets/images/besek-jajanan-removebg-preview_enhanced.png', width: 45, height: 45,),
                      Text('Oleh-Oleh'),
                      Text('Khas Daerah')
                    ],
                  ),
                ),
                SizedBox(width: 20),
                // Makanan
                Container(
                  padding: const EdgeInsets.only(left: 8, top: 2, right: 8, bottom: 2),
                  decoration: BoxDecoration(color: grey, border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.3)),borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Image.asset('assets/images/tumpheng-removebg-preview_enhanced.png', width: 65, height: 43,),
                      Text('Makanan'),
                      Text('Tradisional')
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                // Minuman
                Container(
                  padding: const EdgeInsets.only(left: 8, top: 2, right: 8, bottom: 2),
                  decoration: BoxDecoration(color: grey, border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.3)),borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Image.asset('assets/images/teko_dan_gelas_enhanced-removebg-preview.png', width: 65, height: 43,),
                      Text('Minuman'),
                      Text('Tradisional')
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
