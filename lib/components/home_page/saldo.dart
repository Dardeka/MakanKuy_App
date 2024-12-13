import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_makankuy/theme.dart';

class Saldo extends StatefulWidget {
  const Saldo({super.key});

  @override
  State<Saldo> createState() => _SaldoState();
}

class _SaldoState extends State<Saldo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 17, right: 17, top: 11, bottom: 11),
            decoration: BoxDecoration(
                color: white,
                border: Border.all(color: black),
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [BoxShadow(color: Color.fromARGB(64, 0, 0, 0), blurRadius: 15)]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // bagian saldo
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Saldo :',
                        style: bold12,
                      ),
                      Text(
                        'Rp 249,999',
                        style: regular12,
                      )
                    ],
                  ),
                ),
                // garis vertikal
                const SizedBox(width: 14),
                Container(
                  width: 1,
                  height: 47,
                  color: black,
                ),
                const SizedBox(width: 26),
                // bagian topup
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(bottom: 2),
                        decoration: BoxDecoration(
                            color: green1, borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/berandaPage/Topup.svg'),
                          ],
                        ),
                      ),
                      Text('Top Up', style: bold12)
                    ],
                  ),
                ),
                // garis vertikal
                const SizedBox(width: 25),
                Container(
                  width: 1,
                  height: 47,
                  color: black,
                ),
                const SizedBox(width: 27),
                // bagian scan
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: green1, borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/berandaPage/Scan.svg'),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),

          )
        ],
      ),
    );
  }
}
