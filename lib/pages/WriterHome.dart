import 'package:app_makankuy/pages/profile_page.dart';
import 'package:app_makankuy/pages/tren_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_makankuy/theme.dart';

class Writerhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mie Ayam',
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Budi Doremi',
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jumlah Saldo',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Rp23.000.000',
                    style: TextStyle(fontSize: 22, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade300,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Text(
              'ini berita!! ini berita!! ini berita!!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),

      // GANTI DARI SINI JAH
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Writerhome()));
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
                  // keranjang
                  // profil
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>TrenPage()));
                      }, 
                      child: Column(
                        children: [
                          SvgPicture.asset('assets/icons/WriterHome/trending_up.svg'),
                          const Text('Profil', style: TextStyle(color: Colors.black),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                      }, 
                      child: Column(
                        children: [
                          SvgPicture.asset('assets/icons/WriterHome/person.svg'),
                          const Text('Profil', style: TextStyle(color: Colors.black),)
                        ],
                      ),
                    )
                  ),
                ],
              ))),
    );
  }
}