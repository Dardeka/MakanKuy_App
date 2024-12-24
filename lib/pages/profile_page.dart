import 'package:app_makankuy/pages/WriterHome.dart';
import 'package:app_makankuy/pages/login_page.dart';
import 'package:app_makankuy/pages/tren_page.dart';
import 'package:app_makankuy/pages/review_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilePage());
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserProfilePage(),
    );
  }
}

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  int _currentIndex = 2; // Default to 'Profil'

  void _navigateTo(int index) {
    if (index == _currentIndex) return; // Avoid redundant navigation
    if (index == 0) {
      // Navigate to Beranda (WriterHome) without back arrow
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Writerhome()),
      );
    } else if (index == 1) {
      // Navigate to Tren without back arrow
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const TrenPage()),
      );
    } else if (index == 2) {
      // Navigate to Profil (current page)
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ProfilePage()),
      );
    }
    setState(() {
      _currentIndex = index; // Update the current index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          'Mie Ayam',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              // Show logout confirmation dialog
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Keluar"),
                  content: const Text("Apakah Anda yakin ingin keluar?"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Close the dialog
                      },
                      child: const Text("Batal"),
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigate to Login Page without back arrow
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                          (route) => false, // Clear navigation stack
                        );
                      },
                      child: const Text(
                        "Keluar",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              );
            },
            child: const Text(
              'Keluar',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.account_circle,
                  size: 48,
                  color: Colors.grey,
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '081234567890',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'adminmieayam@gmail.com',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Budi',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  ),
                  onPressed: () {
                    // Placeholder for UMKM Training
                    print('Pelatihan UMKM');
                  },
                  child: Column(
                    children: const [
                      Icon(Icons.store, size: 40, color: Colors.white),
                      SizedBox(height: 8),
                      Text('Pelatihan UMKM', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  ),
                  onPressed: () {
                    // Placeholder for Product Management
                    print('Kelola Produk');
                  },
                  child: Column(
                    children: const [
                      Icon(Icons.edit, size: 40, color: Colors.white),
                      SizedBox(height: 8),
                      Text('Kelola Produk', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  ),
                  onPressed: () {
                    // Navigate to Product Reviews Page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ReviewPage()),
                    );
                  },
                  child: Column(
                    children: const [
                      Icon(Icons.rate_review, size: 40, color: Colors.white),
                      SizedBox(height: 8),
                      Text('Ulasan Produk', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
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
            icon: Icon(Icons.trending_up),
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