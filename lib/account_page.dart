import 'package:flutter/material.dart';
import 'package:tugas2_mobile_lanjut/manage_account_page.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: const [
                  Icon(
                    Icons.account_circle,
                    size: 100,
                    color: Colors.blue, // Menambahkan warna biru pada icon
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Nama Lengkap',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue, // Menambahkan warna biru pada teks
                    ),
                  ),
                  Text(
                    'Asal Universitas',
                    style: TextStyle(
                      color: Colors.blue, // Menambahkan warna biru pada teks
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: const Text(
                'Kelola Akun',
                style: TextStyle(color: Colors.blue), // Menambahkan warna biru pada teks
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.blue), // Menambahkan warna biru pada icon
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ManageAccountPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Notifikasi',
                style: TextStyle(color: Colors.blue), // Menambahkan warna biru pada teks
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.blue), // Menambahkan warna biru pada icon
              onTap: () {
                // Handle navigation to notifications
              },
            ),
            ListTile(
              title: const Text(
                'Privacy Policy',
                style: TextStyle(color: Colors.blue), // Menambahkan warna biru pada teks
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.blue), // Menambahkan warna biru pada icon
              onTap: () {
                // Handle navigation to privacy policy
              },
            ),
            ListTile(
              title: const Text(
                'Terms of Service',
                style: TextStyle(color: Colors.blue), // Menambahkan warna biru pada teks
              ),
              trailing: const Icon(Icons.arrow_forward, color: Colors.blue), // Menambahkan warna biru pada icon
              onTap: () {
                // Handle navigation to terms of service
              },
            ),
          ],
        ),
      ),
    );
  }
}