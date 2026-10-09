import 'package:flutter/material.dart';

void main() {
  runApp(const MyClass());
}

class MyClass extends StatelessWidget {
  const MyClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // TAMBAHAN 1: AppBar biar ada header di atas aplikasi
        appBar: AppBar(
          title: const Text(
            'Tugas Mobile Azriel',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.pinkAccent, // Warna bar atasnya
          centerTitle: true, // Biar teks judulnya di tengah
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              Image.network(
                'https://media.giphy.com/media/xT0xezQGU5xCDJuCPe/giphy.gif', 
                width: 250, 
              ),
              const SizedBox(height: 20), 
              const Text(
                'KING INDO',
                style: TextStyle(
                  fontSize: 35, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white, 
                ),
              ),
              const SizedBox(height: 25), // Jarak antara teks dan tombol
              
              // TAMBAHAN 2: Tombol interaktif
              ElevatedButton(
                onPressed: () {
                  // Aksi kalau tombol dipencet (nanti bisa munculin efek atau pindah halaman)
                  print("Tombol King Indo dipencet!"); 
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Warna background tombol
                  foregroundColor: Colors.pink, // Warna teks di dalam tombol
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Bikin tombolnya agak gede
                ),
                child: const Text(
                  'GAS BANG!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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