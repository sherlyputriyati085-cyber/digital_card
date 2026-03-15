import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false, // Menghilangkan tulisan DEBUG
    home: MyPage(),
  ),
);

class MyPage extends StatelessWidget {
  const MyPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // No 1: Background abu-abu terang
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Digital Name Card'),
        backgroundColor: Colors.blue,
      ),
      // No 8: Membungkus dengan SingleChildScrollView agar responsif (tidak overflow)
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
            ), // Jarak atas-bawah agar tidak nempel layar
            child: Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white, // No 2: Kartu putih
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // No 2: Bayangan
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              // No 3: Menggunakan Column
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // No 4: CircleAvatar
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey[200],
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),

                  SizedBox(height: 15),

                  // No 5: Nama, NIM, dan Profesi
                  Text(
                    'Sherly Putriyati',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '20241220012',
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                  Text(
                    'Mahasiswa Teknik Informatika',
                    style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                  ),

                  // No 6: Garis pemisah
                  Divider(height: 30, thickness: 1, color: Colors.grey[300]),

                  // No 7: Row berisi ikon Email
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(Icons.email, color: Colors.blue),
                      ),
                      Text(
                        'sherlyputriyati@gmail.com',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
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
