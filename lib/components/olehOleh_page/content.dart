import 'package:app_makankuy/pages/shop_detail.dart';
import 'package:app_makankuy/databases/database_service.dart';
import 'package:app_makankuy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class contentList extends StatefulWidget {
  const contentList({super.key});

  @override
  State<contentList> createState() => _contentListState();
}

class _contentListState extends State<contentList> {
  final DatabaseService _databaseService = DatabaseService.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300,
            height: 115,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                padding: const EdgeInsets.only(top: 11, left: 11, bottom: 11, right: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const shopDetail()));
              }, 
              child: Row(
                children: [
                  Image.asset('assets/images/ragusa.png', width: 92, height: 92,),
                  SizedBox(width: 14,),
                  Container(
                    width: 168,
                    height: 86,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ragusa Es Italia', style: semiBold12.copyWith(color: black),),
                        SizedBox(height: 7,),
                        Flexible(
                          child: Text('Jl. Veteran I No.10, RT.4/RW.2, Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Jakarta 10110', style: medium8.copyWith(color: black), softWrap: true,)
                        ),
                        SizedBox(height: 7,),
                        Text('Jajanan, Makanan Manis, Minuman', style: medium8.copyWith(color: Color.fromRGBO(0, 0, 0, 0.53)),),
                        SizedBox(height: 7,),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.star_rate, size: 9,color: Color.fromRGBO(117, 117, 117, 1),),
                              Text('4.8 | 3 km | 30 menit', style: medium8.copyWith(color: Color.fromRGBO(0, 0, 0, 0.53)),)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}