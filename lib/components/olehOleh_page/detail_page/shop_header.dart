import 'package:app_makankuy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class headerApp extends StatelessWidget {
  const headerApp({super.key});

  // double scWidth = MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 35, left: 18),
              child: IconButton(
                onPressed: () => Navigator.pop(context), 
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: white,
                ),
              )
            ),
          ),
          SizedBox(height: 9,),
          Container(
            height: MediaQuery.of(context).size.height * 0.885,
            width: double.infinity,
            decoration: BoxDecoration(color: white, borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // icons
                Container(
                  margin: const EdgeInsets.only(left: 32, top: 13),
                  width: 103,
                  // decoration: BoxDecoration(color: palYel),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('assets/icons/oleh2Page/kp.svg'),
                      SvgPicture.asset('assets/icons/oleh2Page/fav.svg'),
                      SvgPicture.asset('assets/icons/oleh2Page/share.svg'),
                      SvgPicture.asset('assets/icons/oleh2Page/info.svg')
                    ],
                  ),
                ),
                // category
                Container(
                  margin: const EdgeInsets.only(left: 32, top: 13),
                  width: 75,
                  decoration: BoxDecoration(border: Border(left: BorderSide(color: green2, width: 2))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Oleh - Oleh', style: semiBold12.copyWith(color: green2),)
                    ],
                  ),
                ),
                // nama toko
                Container(
                  // width: 85,
                  margin: const EdgeInsets.only(left: 32, top: 13),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ragusa Es Italia', style: semiBold12.copyWith(fontSize: 24)),
                      // Text('Es Italia', style: semiBold12.copyWith(fontSize: 24))
                    ],
                  ),
                ),
                SizedBox(height: 18,),
                // bagian detail
                Container(
                  width: 299,
                  margin: const EdgeInsets.only(left: 32, top: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // rating
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.star, color: Color.fromRGBO(117, 117, 117, 1), size: 23,),
                            Text('4.8', style: medium8.copyWith(fontSize: 16, color: Color.fromRGBO(117, 117, 117, 1)),)
                          ],
                        ),
                      ),
                      // distance
                      Container(
                        child: Row(
                          children: [
                            Text('3km', style: medium8.copyWith(fontSize: 16, color: Color.fromRGBO(117, 117, 117, 1)),)
                          ],
                        ),
                      ),
                      // est. delivery time
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset('assets/icons/oleh2Page/delivery.svg'),
                            SizedBox(width: 5,),
                            Text('30 menit', style: medium8.copyWith(fontSize: 16, color: Color.fromRGBO(117, 117, 117, 1)),)
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}