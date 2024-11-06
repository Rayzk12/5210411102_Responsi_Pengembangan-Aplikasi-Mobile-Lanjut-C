import 'package:flutter/material.dart';

class ManageAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelola Akun'),
        backgroundColor: Colors.blue, // Mengubah warna AppBar menjadi biru
      ),
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
                  Icon(Icons.account_circle, size: 100, color: Colors.blue), // Menambahkan warna biru pada icon
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
                    style: TextStyle(color: Colors.blue), // Menambahkan warna biru pada teks
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: 'Email',
                labelStyle: const TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: 'Nama',
                labelStyle: const TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: 'Nomor Telepon',
                labelStyle: const TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                labelText: 'Alamat',
                labelStyle: const TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle update profile action
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                child: Text(
                  'Ubah Profil',
                  style: TextStyle(fontSize: 18, color: Colors.blue), // Menambahkan warna biru pada teks
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}