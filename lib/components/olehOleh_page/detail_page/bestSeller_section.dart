import 'package:flutter/material.dart';
import 'package:app_makankuy/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class bestSeller extends StatelessWidget {
  const bestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      margin: const EdgeInsets.only(top: 267),
      alignment: Alignment.center,
      // decoration: BoxDecoration(color: palYel),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Our best seller : ', style: bold12.copyWith(fontSize: 20),),
          SizedBox(height: 9,),
          // List produk best seller
          Container(
            width: 300,
            margin: const EdgeInsets.only(left: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // menu 1
                Container(
                  width: 125,
                  height: 190,
                  padding: const EdgeInsets.only(top: 13),
                  decoration: BoxDecoration(color: Color.fromRGBO(163, 210, 87, 1), borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Image.asset('assets/images/banana-split.png',),
                      SizedBox(height: 5,),
                      Container(
                        // width: 100,
                        // margin: const EdgeInsets.only(left: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Banana Split', style: semiBold12.copyWith(fontSize: 15),),
                            Text('Rp 40.000', style: semiBold12.copyWith(fontSize: 13),),
                            Container(
                              width: 103,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Terjual 100+', style: semiBold12.copyWith(fontSize: 10, color: Color.fromRGBO(68, 68, 68, 1)),),
                                  Positioned(child: Icon(
                                    Icons.add_circle_outline,
                                    size: 32,
                                  ),)
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ], 
                  ),
                ),
                // menu 2
                Container(
                  width: 125,
                  height: 190,
                  padding: const EdgeInsets.only(top: 13),
                  decoration: BoxDecoration(color: Color.fromRGBO(163, 210, 87, 1), borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Image.asset('assets/images/stroberi.png',),
                      SizedBox(height: 5,),
                      Container(
                        // width: 100,
                        // margin: const EdgeInsets.only(left: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Strawberry', style: semiBold12.copyWith(fontSize: 15),),
                            Text('Rp 20.000', style: semiBold12.copyWith(fontSize: 13),),
                            Container(
                              width: 103,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Terjual 100+', style: semiBold12.copyWith(fontSize: 10, color: Color.fromRGBO(68, 68, 68, 1)),),
                                  Positioned(child: Icon(
                                    Icons.add_circle_outline,
                                    size: 32,
                                  ),)
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
            ),
          )
        ],
      ),
    );
  }
}