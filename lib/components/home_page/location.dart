import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_makankuy/theme.dart';

class location extends StatelessWidget {
  const location({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 387),
            padding: const EdgeInsets.only(left: 20, top: 8.5, bottom: 8.5),
            decoration: BoxDecoration(
                color: palYel, borderRadius: BorderRadius.circular(19)),
            width: 316,
            height: 47,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/icons/berandaPage/Lokasi.svg'),
                Container(
                  margin: const EdgeInsets.only(left: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You are in :',
                        style: bold12,
                      ),
                      Text(
                        'Gambir, Jakarta Pusat, Daerah Khusus Jakarta',
                        style: regular12,
                      )
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
