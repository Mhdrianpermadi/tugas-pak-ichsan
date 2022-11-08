import 'package:flutter/material.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({super.key});

  @override
  State<ProdukForm> createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
                decoration: const InputDecoration(labelText: "kode produk")),
            TextField(
                decoration: const InputDecoration(labelText: "nama produk")),
            TextField(decoration: const InputDecoration(labelText: "harga")),
            ElevatedButton(onPressed: () {}, child: Text("simpan"))
          ],
        ),
      ),
    );
  }
}

// _textboxkodeproduk() {
//   return TextField(
//     decoration: const InputDecoration(labelText: "kode produk"),
//   );
//   _textboxnamaproduk() {
//     return TextField(
//         decoration: const InputDecoration(labelText: "nama produk"));
//   }

//   _textboxhargaproduk() {
//     return TextField(decoration: const InputDecoration(labelText: "harga"));
//   }

//   _tombolsimpan() {
//     return ElevatedButton(onPressed: () {}, child: const Text('simpan'));
//   }

