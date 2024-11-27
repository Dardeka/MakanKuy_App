import 'package:app_makankuy/components/background.dart';
import 'package:app_makankuy/components/header.dart';
import 'package:app_makankuy/components/location.dart';
import 'package:app_makankuy/components/mainFeature.dart';
import 'package:app_makankuy/components/maps.dart';
import 'package:app_makankuy/components/poster.dart';
import 'package:app_makankuy/components/saldo.dart';
import 'package:app_makankuy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Nav-Bar atas
      appBar: AppBar(
          backgroundColor: green2, toolbarHeight: 76, title: const Header()),
      // bagian utama
      body: const SafeArea(
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Poster(),
            Background(),
            Positioned(top: 198, left: 40, right: 40, child: Saldo()),
            Positioned(top: 265, child: mainFeature()),
            Positioned(child: location()),
            Positioned(child: maps())
          ],
        ),
      ),
      // bagian Bottom Nav-Bar
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
                        Text('Aktivitas')
                      ],
                    ),
                  ),
                  // keranjang
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/icons/Keranjang.svg'),
                        Text('Keranjang')
                      ],
                    ),
                  ),
                  // profil
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/icons/Profile.svg'),
                        Text('Profil')
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}
