import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyPage()));

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Mengatur warna background menjadi abu-abu terang
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('Contoh Background'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        // Widget Text sebelumnya diganti dengan Container (Kartu)
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white, // Warna kartu putih
            borderRadius: BorderRadius.circular(15), // Sudut melengkung
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // Bayangan halus
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 5), // Bayangan jatuh ke bawah
              ),
            ],
          ),
          // Isi di dalam kartu
          child: const Center(
            child: Text(
              'Halo! Ini di dalam Kartu.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
