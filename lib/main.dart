import 'package:flutter/material.dart';

void main() {
  runApp(const MyClass());
}

class MyClass extends StatelessWidget {
  const MyClass({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(), // Kita panggil class HomeScreen di sini
    );
  }
}

// Class baru khusus untuk halaman utama
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tugas Mobile Azriel',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple, // Ganti warna biar lebih premium
        centerTitle: true,
        elevation: 8, // Ngasih efek bayangan di bawah AppBar
        shadowColor: Colors.purpleAccent,
      ),
      // 1. BACKGROUND GRADIENT
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.pinkAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          // 2. CARD WIDGET (Kartu pembungkus)
          child: Card(
            elevation: 10,
            color: Colors.white.withOpacity(0.9), // Warna kartu agak transparan dikit
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Bikin ujung kartu melengkung
            ),
            margin: const EdgeInsets.all(30),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Biar tinggi kartu menyesuaikan isinya
                children: [
                  // Gambar GIF yang ujungnya dilengkungkan (ClipRRect)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      'https://media.giphy.com/media/xT0xezQGU5xCDJuCPe/giphy.gif', 
                      width: 200, 
                    ),
                  ),
                  const SizedBox(height: 20), 
                  
                  const Text(
                    'KING INDO',
                    style: TextStyle(
                      fontSize: 32, 
                      fontWeight: FontWeight.bold, 
                      color: Colors.black87, 
                    ),
                  ),
                  const SizedBox(height: 10),

                  // 3. ROW & ICONS (Nyusun ikon menyamping)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 30),
                      SizedBox(width: 10),
                      Icon(Icons.verified, color: Colors.blue, size: 30),
                      SizedBox(width: 10),
                      Icon(Icons.local_fire_department, color: Colors.red, size: 30),
                    ],
                  ),
                  const SizedBox(height: 25), 
                  
                  // 4. TOMBOL DENGAN ICON DAN SNACKBAR (POP-UP)
                  ElevatedButton.icon(
                    onPressed: () {
                      // Ini kodingan untuk memunculkan notifikasi pop-up di layar HP
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Menyala Abangkuuu! 🔥', 
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                          ),
                          backgroundColor: Colors.green,
                          behavior: SnackBarBehavior.floating, // Biar pop-up nya melayang
                        ),
                      );
                    },
                    icon: const Icon(Icons.rocket_launch), // Nambahin ikon roket di tombol
                    label: const Text(
                      'GAS BANG!',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple, 
                      foregroundColor: Colors.white, 
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Bikin tombol bulat
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}