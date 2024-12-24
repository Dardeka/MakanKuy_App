
import 'package:app_makankuy/pages/WriterHome.dart';
import 'package:app_makankuy/pages/profil_user.dart';
import 'package:app_makankuy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  
  CustomTextField({required this.labelText});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          fillColor: Colors.grey[300],
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class Aktivasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: green2,
            height: 200,
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  left: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ProfileUser
                          ()));
                        },
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.green[700],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Es Krim Ragusa',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Andi Susanto',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.lightGreen[200],
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CustomTextField(labelText: 'Nama Pemilik'),
                    CustomTextField(labelText: 'Nama Toko'),
                    CustomTextField(labelText: 'Alamat Toko'),
                    CustomTextField(labelText: 'No. Telepon'),
                    CustomTextField(labelText: 'NIK'),
                    CustomTextField(labelText: 'NPWP'),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Writerhome
                          ()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}