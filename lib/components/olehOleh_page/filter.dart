import 'package:app_makankuy/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      // margin: const EdgeInsets.only(top: 63),
      decoration: BoxDecoration(color: green2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // box terlaris
          Container(
            width: 68,
            height: 30,
            decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Terlaris', style: bold12)
              ],
            ),
          ),
          // box Terdekat
          Container(
            width: 68,
            height: 30,
            decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Terdekat', style: bold12,)
              ],
            ),
          ),
          // box Pickup
          Container(
            width: 68,
            height: 30,
            decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Pickup', style: bold12,)
              ],
            ),
          ),
          // box Diskon
          Container(
            width: 68,
            height: 30,
            decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Diskon', style: bold12,)
              ],
            ),
          ),
          // box icon filter
          Container(
            width: 36,
            height: 30,
            decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/oleh2Page/filter.svg')
              ],
            ),
          )
        ],
      ),
    );
  }
}
