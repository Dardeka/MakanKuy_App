import 'package:flutter/material.dart';
import 'package:app_makankuy/pages/profile_page.dart';

void main() {
  runApp(const TrenPage());
}

class TrenPage extends StatelessWidget {
  const TrenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TrenProdukScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TrenProdukScreen extends StatefulWidget {
  const TrenProdukScreen({Key? key}) : super(key: key);

  @override
  _TrenProdukScreenState createState() => _TrenProdukScreenState();
}

class _TrenProdukScreenState extends State<TrenProdukScreen> {
  final List<String> products = const [
    "Food 1",
    "Food 2",
    "Food 3",
    "Food 4",
    "Food 5",
    "Food 6",
    "Food 7",
  ];

  int _currentIndex = 1; // Halaman awal adalah "Tren"

  /// Navigasi antar tab atau halaman
  void _navigateTo(int index) {
    if (index == _currentIndex) return; // Jika tab yang dipilih sama, jangan ubah state
    if (index == 2) {
      // Navigasi ke halaman Profil
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProfilePage()),
      );
    } else {
      setState(() {
        _currentIndex = index; // Perbarui tab aktif
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Tren Produk',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: _currentIndex == 1
          ? ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 16.0),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:
                              index < 3 ? Colors.white : Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: index < 3
                            ? Icon(
                                Icons.emoji_events,
                                color: index == 0
                                    ? Colors.amber
                                    : index == 1
                                        ? Colors.grey
                                        : Colors.brown,
                                size: 20,
                              )
                            : Text(
                                '${index + 1}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.red.shade100,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            products[index],
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          : Center(
              child: Text(
                _currentIndex == 0
                    ? 'Beranda'
                    : 'Halaman tidak tersedia',
                style: const TextStyle(fontSize: 24),
              ),
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