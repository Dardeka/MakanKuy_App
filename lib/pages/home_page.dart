import 'package:app_makankuy/components/home_page/background.dart';
import 'package:app_makankuy/components/home_page/header.dart';
import 'package:app_makankuy/components/home_page/location.dart';
import 'package:app_makankuy/components/home_page/mainFeature.dart';
import 'package:app_makankuy/components/home_page/maps.dart';
import 'package:app_makankuy/components/home_page/poster.dart';
import 'package:app_makankuy/components/home_page/saldo.dart';
import 'package:app_makankuy/components/profile/profile_page.dart';
import 'package:app_makankuy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // Nav-Bar atas
      appBar: AppBar(
          backgroundColor: green2, toolbarHeight: 76, title: const Header()),
      // bagian utama
      body: SafeArea(
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Poster(),
            Background(),
            mainFeature(),
            location(),
            maps(),
            Positioned(top: 198, left: screenWidth/2 - 135, child: Saldo()),
            // Positioned(child: location()),
            // Positioned(child: maps())
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
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>profilePage()));
                      }, 
                      child: Column(
                        children: [
                          SvgPicture.asset('assets/icons/Beranda.svg'),
                          Text(
                            'Beranda',
                            style: bold6.copyWith(fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ),
                  // ),
                  // aktivitas
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 1, top: 0),
                      ),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>profilePage()));
                      }, 
                      child: Column(
                        children: [
                          SvgPicture.asset('assets/icons/Aktivitas.svg'),
                          Text('Aktivitas', style: TextStyle(color: black),)
                        ],
                      ),
                    )
                  ),
                  // keranjang
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 1, top: 0),
                      ),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>profilePage()));
                      }, 
                      child: Column(
                        children: [
                          SvgPicture.asset('assets/icons/Keranjang.svg'),
                          const Text('Keranjang', style: TextStyle(color: Colors.black),)
                        ],
                      ),
                    )
                    
                  //   
                  ),
                  // profil
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>profilePage()));
                      }, 
                      child: Column(
                        children: [
                          SvgPicture.asset('assets/icons/Profile.svg'),
                          const Text('Profil', style: TextStyle(color: Colors.black),)
                        ],
                      ),
                    )
                  )
                ],
              ))),
    );
  }
}
