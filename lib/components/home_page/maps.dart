import 'package:flutter/material.dart';
import 'package:app_makankuy/theme.dart';

class maps extends StatelessWidget {
  const maps({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 443),
            padding: const EdgeInsets.only(top: 10, left: 22, right: 22, bottom: 2),
            decoration: BoxDecoration(color: red, borderRadius: BorderRadius.circular(10)),
            width: 313,
            height: 164,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('UMKM disekitar :', style: bold12.copyWith(color: white)),
                // image
                const SizedBox(height: 8),
                Image.asset('assets/images/gmaps.png', fit: BoxFit.fill,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
