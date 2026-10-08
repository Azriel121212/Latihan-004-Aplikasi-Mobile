import 'package:flutter/material.dart';

void main() {
  runApp(const MyClass());
}

class MyClass extends StatelessWidget {
  const MyClass({super.key});

  @override
  Widget build(BuildContext context) {
    // Kata 'const' di depan MaterialApp dihilangkan karena Image.network butuh internet
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          // Column dipakai untuk menyusun susunan widget dari atas ke bawah
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Biar posisinya di tengah layar
            children: [
              // 1. Menampilkan GIF dari internet
              Image.network(
                'https://media.giphy.com/media/xT0xezQGU5xCDJuCPe/giphy.gif', 
                width: 250, 
              ),
              
              // Memberikan jarak kosong antara gambar dan teks sebesar 20 pixel
              const SizedBox(height: 20), 
              
              // 2. Kodingan Teks awal lu
              const Text(
                'KING INDO',
                style: TextStyle(
                  fontSize: 35, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white, 
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromRGBO(255, 0, 149, 0.325),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class BasicTextWidget extends StatelessWidget {
  const BasicTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello World',
    );
  }
}