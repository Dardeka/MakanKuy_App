import 'package:flutter/material.dart';
import 'package:app_makankuy/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 19, bottom: 19, left: 12, right: 12),
      // decoration: BoxDecoration(color: green1),
      child: Row(
        children: [
          Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 18, right: 18),
              decoration: BoxDecoration(
                  color: white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        'Cari makanan yang kamu mau',
                        style: regular12,
                      )), //isi search bar
                  // SvgPicture.asset('assets/icons/berandaPage/Search.svg', width: 22, height: 22 )
                  SvgPicture.asset('assets/icons/berandaPage/Search.svg', width: 22, height: 22)
                ],
              )) /*search*/,
          Container(
            padding: const EdgeInsets.only(left: 10, right: 7),
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/berandaPage/Notif.svg',
                    width: 30, height: 30),
              ],
            ),
          ) /* notification */,
          SvgPicture.asset('assets/icons/berandaPage/Setting.svg',
              width: 24, height: 24),
        ],
      ),
    );
  }
}
