// import 'package:aplikasi_flutter_rian/column_widget.dart';
// import 'package:aplikasi_flutter_rian/row_widget.dartr';
import 'package:aplikasi_flutter_rian/ui/daftar.dart';
import 'package:aplikasi_flutter_rian/ui/kolom_navigasi_samping.dart';
// import 'package:aplikasi_flutter_rian/ui/produk_form.dart';
// import 'package:aplikasi_flutter_rian/hello_world.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "app flutter pertama",
      home: KolomNavigasiSamping(),
    );
  }
}
