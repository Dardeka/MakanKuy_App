import 'package:app_makankuy/pages/oleh2_page.dart';
import 'package:app_makankuy/services/database_service.dart';
import 'package:app_makankuy/theme.dart';
import 'package:flutter/material.dart';

class createScreen extends StatefulWidget {
  const createScreen({super.key});

  @override
  State<createScreen> createState() => _createScreenState();
}

class _createScreenState extends State<createScreen> {
  final DatabaseService _databaseService = DatabaseService.instance;

  final shopName = TextEditingController();
  final ownerName = TextEditingController();
  final address = TextEditingController();
  final TextEditingController phoneNum = TextEditingController();

  String? _shopName = null;
  String? _ownerName = null;
  String? _address = null;
  String? _phoneNum = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Masukkan Toko Baru")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama Toko'),
            TextFormField(
              controller: shopName,
              onChanged: (value) {
                setState(() {
                  _shopName = value;
                });
              },
              decoration: const InputDecoration(hintText: 'Masukkan nama toko'),
            ),

            Text('Nama Pemilik'),
            TextFormField(
              controller: ownerName,
              onChanged: (value) {
                setState(() {
                  _ownerName = value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Masukkan nama pemilik'
              ),
            ),

            Text('Alamat'),
            TextFormField(
              controller: address,
              onChanged: (value) {
                setState(() {
                  _address = value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Masukkan alamat'
              ),
            ),

            Text('Nomor Telepon'),
            TextFormField(
              controller: phoneNum,
              onChanged: (value) {
                setState(() {
                  _phoneNum = value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Masukkan nomor telepon'
              ),
            ),

            SizedBox(
              height: 10,
            ),
            // SUBMIT BUTTON
            ElevatedButton(
                onPressed: () async {
                  if (_shopName == null || _shopName == "" ||
                    _ownerName == null || _shopName == "" ||
                    _address == null || _address == "" ||
                    _phoneNum == null || _phoneNum == ""
                  ) return;
                  _databaseService.addShop(_shopName!, _ownerName!, _address!, _phoneNum!);
                  setState(() {
                    _shopName = null;
                    _ownerName = null;
                    _address = null;
                    _phoneNum = null;
                  });
                  final shops = await _databaseService.getShops();
                  for (var shop in shops) {
                    print('Shop ID: ${shop.id}, Name: ${shop.shopName}');
                  }
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => olehOleh()));
                },
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Tambah Toko',
                            style: TextStyle(color: black, fontSize: 20))
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
