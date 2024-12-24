import 'package:app_makankuy/components/olehOleh_page/appBar.dart';
import 'package:app_makankuy/pages/home_page.dart';
import 'package:app_makankuy/pages/profil_user.dart';
import 'package:app_makankuy/components/olehOleh_page/create_shop.dart';
import 'package:app_makankuy/models/shop.dart';
import 'package:app_makankuy/services/database_service.dart';
import 'package:flutter/material.dart';
import 'package:app_makankuy/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class olehOleh extends StatefulWidget {
  const olehOleh({super.key});

  @override
  State<olehOleh> createState() => _olehOlehState();
}

class _olehOlehState extends State<olehOleh> {
  final DatabaseService _databaseService = DatabaseService.instance;

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
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => createScreen()));
              },
              icon: Icon(Icons.add, color: white,))
        ],
      ),
      // bagian konten page
      body:_shopList(),

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
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
                    onPressed: () {}, 
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
                    onPressed: () {}, 
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileUser()));
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
            )
          )
        ),
    );
  }

  Widget _shopList() {
    return FutureBuilder(
        future: _databaseService.getShops(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (context, index) {
              Shops shop = snapshot.data![index];
              return ListTile(
                onLongPress: () {
                  _databaseService.deleteShop(shop.id);
                  setState(() {});
                },
                title: Container(
                  width: 150,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  child: 
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(shop.shopName, style: TextStyle(fontWeight: FontWeight.w600),),
                      Text(shop.address, style: TextStyle(fontSize: 12),),
                      Text(shop.phoneNum, style: TextStyle(fontSize: 12),)
                    ],
                  )
                ),
              );
            },
          );
        });
  }
}
