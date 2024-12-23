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
class User {
  final String name;

  User({required this.name});
}

class ProfileUser extends StatelessWidget {
  final User user = User(name: "Andi Susanto"); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Profil', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: Container(
        color: Colors.lightGreen,
        width: 2000.0,
        height: 900.0,
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.green,
            ),
            SizedBox(height: 10),
            Text(
              user.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              ),
              onPressed: () {},
              child: Text('Aktivasi Toko', style: new TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              ),
              onPressed: () {},
              child: Text('Ubah Profil', style: new TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
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
                          SvgPicture.asset('assets/icons/HomeProfil.svg'),
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
                          SvgPicture.asset('assets/icons/IconProfil.svg'),
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
    

