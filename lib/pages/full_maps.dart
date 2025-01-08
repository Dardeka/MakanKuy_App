import 'package:app_makankuy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MkMaps extends StatefulWidget {
  const MkMaps({super.key});

  @override
  State<MkMaps> createState() => _MkMapsState();
}

class _MkMapsState extends State<MkMaps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green1,
        centerTitle: true,
        title: Text(
          'UMKM di sekitarmu',
          style: bold12.copyWith(fontSize: 20),
        ),
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(-6.1761869, 106.8254453),
              initialZoom: 15.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                additionalOptions: const {
                  'User-Agent': 'com.example.app',
                },
              ),
            ],
          ),
        ],
        // Masukkin footernya
      ),
    );
  }
}
