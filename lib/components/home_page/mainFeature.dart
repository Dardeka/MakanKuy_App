import 'package:app_makankuy/pages/oleh2_page.dart';
import 'package:flutter/material.dart';
import 'package:app_makankuy/theme.dart';

class mainFeature extends StatelessWidget {
  const mainFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 285),
      // decoration: BoxDecoration(color: palYel),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 298,
            height: 85,
            // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Oleh-oleh
                Container(
                  // padding: const EdgeInsets.only(left: 8, top: 2, right: 8, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: grey,
                      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 1, top: 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const olehOleh()),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/besek-jajanan-removebg-preview_enhanced.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(height: 3),
                        Text('Oleh-Oleh',
                            style: medium8.copyWith(fontSize: 12)),
                        Text('Khas Daerah',
                            style: medium8.copyWith(fontSize: 12)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // Makanan
                Container(
                  // padding: const EdgeInsets.only(left: 8, top: 2, right: 8, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: grey,
                      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 1, top: 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => olehOleh()),
                      // );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/tumpheng-removebg-preview_enhanced.png',
                          width: 65,
                          height: 43,
                        ),
                        const SizedBox(height: 3),
                        Text('Makanan',
                            style: medium8.copyWith(fontSize: 12)),
                        Text('Tradisional',
                            style: medium8.copyWith(fontSize: 12)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                // Minuman
                Container(
                  // padding: const EdgeInsets.only(left: 8, top: 2, right: 8, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: grey,
                      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 1, top: 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => olehOleh()),
                      // );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/teko_dan_gelas_enhanced-removebg-preview.png',
                          width: 63,
                          height: 43,
                        ),
                        const SizedBox(height: 3),
                        Text('Minuman',
                            style: medium8.copyWith(fontSize: 12)),
                        Text('Tradisional',
                            style: medium8.copyWith(fontSize: 12)),
                      ],
                    ),
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
