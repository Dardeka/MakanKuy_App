import 'package:app_makankuy/components/olehOleh_page/appBar.dart';
import 'package:app_makankuy/components/olehOleh_page/background_Oleh2.dart';
import 'package:app_makankuy/components/olehOleh_page/content.dart';
import 'package:app_makankuy/components/olehOleh_page/filter.dart';
import 'package:flutter/material.dart';
import 'package:app_makankuy/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class olehOleh extends StatelessWidget {
  const olehOleh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(163, 210, 87, 0.9),
      // bagian header
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.west, color: white),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: green2,
        toolbarHeight: 58,
        title: const headerOlehOleh(),
      ),
      // bagian konten page
      body: Column(
        children: [
          Filter(),
          contentList()
        ],
      )
      , 
      // bagian navbar page
      bottomNavigationBar: Material(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: BottomAppBar(
              color: palYel,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/Beranda.svg'),
                        Text(
                          'Beranda',
                          style: bold6.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  // aktivitas
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/icons/Aktivitas.svg'),
                        const Text('Aktivitas')
                      ],
                    ),
                  ),
                  // keranjang
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/icons/Keranjang.svg'),
                        const Text('Keranjang')
                      ],
                    ),
                  ),
                  // profil
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/icons/Profile.svg'),
                        const Text('Profil')
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}
