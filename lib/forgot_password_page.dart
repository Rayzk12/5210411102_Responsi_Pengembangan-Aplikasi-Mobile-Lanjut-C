import 'package:flutter/material.dart';
import 'package:tugas2_mobile_lanjut/login_page.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/Hololive logo.png', height: 100),
                const SizedBox(height: 20),
                const Text(
                  'Lupa Password',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue, // Menambahkan warna biru
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Pesan',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue, // Menambahkan warna biru
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Masukan email Anda dan tunggu kode etik akan dikirimkan.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.blue), // Menambahkan warna biru
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
                    labelText: 'Masukan Email',
                    labelStyle: const TextStyle(color: Colors.blue),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle forgot password action
                     Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                    child: Text(
                      'Kirim',
                      style: TextStyle(fontSize: 18, color: Colors.blue), // Menambahkan warna biru
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}