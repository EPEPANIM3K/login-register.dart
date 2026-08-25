import 'package:flutter/material.dart';
import 'login.dart';

//Entry point aplikasi Flutter
void main() {
  //Menjalankan aplikasi MyApp
  runApp(const MyApp());
}

//StatelessWidget: class utama aplikasi yang tidak memiliki state yang berubah
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Method build: membangun UI aplikasi
  @override
  Widget build(BuildContext context) {
    //MaterialApp: wrapper root untuk aplikasi dengan Material Design
    return MaterialApp(
      //debugShowCheckedModeBanner: menyembunyikan banner debug di sudut kanan atas
      debugShowCheckedModeBanner: false,
      //home: halaman pertama yang ditampilkan saat aplikasi berjalan
      home: const LoginPage(),
    );
  }
}