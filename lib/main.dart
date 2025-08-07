import 'package:flutter/material.dart';

// Contoh StatefulWidget sederhana
class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState(); // Membuat objek State
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0; // State yang dapat berubah

  void _incrementCounter() {
    setState(() {
      _counter++; // Menambahkan nilai counter
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful Widget Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Anda telah menekan tombol sebanyak:',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '$_counter', // Menampilkan nilai counter
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20), // Memberi jarak
              ElevatedButton(
                onPressed: _incrementCounter, // Fungsi untuk menambah counter
                child: const Text('Tambah'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Ini buat menjalankan aplikasi
void main() {
  runApp(const CounterApp());
}
