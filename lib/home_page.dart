import 'package:flutter/material.dart';
import './account_page.dart';
import './login_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeContentPage(),
    AccountPage(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hololive Indonesia', style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue, // Mengubah warna AppBar menjadi biru
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue, // Mengubah warna item yang dipilih menjadi biru
        onTap: (index) {
          if (index == 2) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
          } else {
            setState(() {
              _currentIndex = index;
            });
          }
        },
      ),
    );
  }
}

class HomeContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Widget Grid View',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue, // Menambahkan warna biru pada teks
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: 120,
                  margin: const EdgeInsets.only(right: 10),
                  color: Colors.grey[300],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.music_note, size: 40, color: Colors.blue), // Menambahkan warna biru pada icon
                      SizedBox(height: 10),
                      Text(
                        'Artist',
                        style: TextStyle(color: Colors.blue), // Menambahkan warna biru pada teks
                      ),
                      Text(
                        'Song',
                        style: TextStyle(color: Colors.blue), // Menambahkan warna biru pada teks
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Widget List View',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue, // Menambahkan warna biru pada teks
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.article, size: 40, color: Colors.blue), // Menambahkan warna biru pada icon
                  title: const Text(
                    'Headline',
                    style: TextStyle(color: Colors.blue), // Menambahkan warna biru pada teks
                  ),
                  subtitle: const Text(
                    'Description duis aute irure dolor in reprehenderit in voluptate.',
                    style: TextStyle(color: Colors.blue), // Menambahkan warna biru pada teks
                  ),
                  trailing: const Icon(Icons.play_arrow, color: Colors.blue), // Menambahkan warna biru pada icon
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}