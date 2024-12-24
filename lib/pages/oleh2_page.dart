import 'package:app_makankuy/components/olehOleh_page/appBar.dart';
import 'package:app_makankuy/components/olehOleh_page/background_Oleh2.dart';
import 'package:app_makankuy/components/olehOleh_page/content.dart';
import 'package:app_makankuy/components/olehOleh_page/filter.dart';
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
      body: _shopList()

      // Column(
      //   children: [
      //     Filter(),

      //   ],
      // )
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
                        SvgPicture.asset(
                            'assets/icons/oleh2Page/home-outline.svg'),
                        Text(
                          'Beranda',
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

  Widget _shopList() {
    return FutureBuilder(
        future: _databaseService.getShops(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (context, index) {
              Shops shop = snapshot.data![index];
              return ListTile(
                onLongPress: () {},
                title: Text(shop.shopName),
              );
            },
          );
        });
  }
}
