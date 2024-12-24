import 'package:app_makankuy/pages/profile_page.dart';
import 'package:app_makankuy/pages/tren_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_makankuy/theme.dart';
import 'package:app_makankuy/pages/tren_page.dart';

void main() {
  runApp(const Writerhome());
}

class Writerhome extends StatefulWidget {
  const Writerhome({Key? key}) : super(key: key);

  @override
  _WriterhomeState createState() => _WriterhomeState();
}

class _WriterhomeState extends State<Writerhome> {
  int _currentIndex = 0; // Default index is 'Beranda'

  void _navigateTo(int index) {
    if (index == _currentIndex) return; // Avoid redundant navigation
    setState(() {
      _currentIndex = index; // Update the current index
    });

    if (index == 1) {
      // Navigate to 'Tren'
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TrenPage()),
      );
    } else if (index == 2) {
      // Navigate to 'Profile'
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProfilePage()),
      );
    }
    // No explicit navigation for index 0 (Beranda) as it's the current page.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          'Mie Ayam',
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
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
            padding: const EdgeInsets.all(16),
            child: const Text(
              'Ini berita!! Ini berita!! Ini berita!!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _navigateTo,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stairs),
            label: 'Tren',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Color.fromARGB(255, 108, 108, 108),
        backgroundColor: Color.fromARGB(255, 80, 198, 83),
),
);
}
}