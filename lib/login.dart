import 'package:flutter/material.dart';
import 'package:flutter_application_1/register.dart';

//StatefulWidget: widget yang memiliki state yang dapat berubah
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

//State class untuk LoginPage
class _LoginPageState extends State<LoginPage> {
  //Variable: menyimpan status visibilitas password
  bool _obscurePassword = true;
  //Variable: menyimpan status checkbox "Ingat saya"
  bool _rememberMe = false;

  //Method build: membangun UI halaman login
  @override
  Widget build(BuildContext context) {
    //Scaffold: struktur dasar halaman dengan app bar, body, dll
    return Scaffold(
      //backgroundColor: warna latar belakang halaman
      backgroundColor: const Color(0xFFF5F7FB),

      //body: konten utama halaman
      body: SafeArea(
        //SafeArea: memastikan konten tidak tertutup status bar atau notch
        child: Center(
          //Center: menempatkan child di tengah layar
          child: SingleChildScrollView(
            //SingleChildScrollView: membuat konten bisa di-scroll jika melebihi ukuran layar
            padding: const EdgeInsets.all(20),

            child: ConstrainedBox(
              //ConstrainedBox: membatasi ukuran maksimal child
              constraints: const BoxConstraints(
                maxWidth: 500,
              ),

              //Column: menyusun children secara vertikal
              child: Column(
                children: [

                   //Container: icon lingkaran di atas
                  Container(
                    width: 60,
                    height: 60,
                    //BoxDecoration: styling untuk container
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(226, 223, 23, 1),
                      //BoxShape.circle: membuat container berbentuk lingkaran
                      shape: BoxShape.circle,
                    ),
                    //Icon: menampilkan ikon lock
                    child: const Icon(
                      Icons.lock_outline,
                      size: 30,
                      color: Color.fromARGB(255, 247, 247, 246),
                    ),
                  ),

                  //SizedBox: spacer untuk jarak vertikal
                  const SizedBox(height: 18),

                   //Text: judul halaman login
                  const Text(
                    'Selamat Datang',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF202124),
                    ),
                  ),

                  const SizedBox(height: 6),

                  //Text: subtitle halaman login
                  const Text(
                    'Silakan login untuk melanjutkan',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 22),

                   //Card: container dengan shadow dan rounded corner
                  Card(
                    //elevation: ketinggian shadow card
                    elevation: 3,
                    shadowColor: Colors.black26,
                    //RoundedRectangleBorder: membuat border card melengkung
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    //Padding: memberikan ruang di dalam card
                    child: Padding(
                      padding: const EdgeInsets.all(16),

                      //Column: menyusun form fields secara vertikal
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                           //Text: label untuk field email
                          const Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 6),

                           //TextFormField: input field untuk email dengan styling border kuning
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,

                            //InputDecoration: styling untuk input field
                            decoration: InputDecoration(
                              //hintText: placeholder text
                              hintText: 'Masukkan email',

                              //prefixIcon: ikon di sebelah kiri input
                              prefixIcon: const Icon(
                                Icons.email_outlined,
                                size: 20,
                              ),

                              //enabledBorder: border saat field tidak aktif
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9),
                                borderSide: const BorderSide(
                                  color: Colors.yellow,
                                  width: 2,
                                ),
                              ),

                              //focusedBorder: border saat field aktif/fokus
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9),
                                borderSide: const BorderSide(
                                  color: Colors.yellow,
                                  width: 2,
                                ),
                              ),

                              //contentPadding: ruang di dalam input field
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 12,
                              ),
                            ),
                          ),

                          const SizedBox(height: 14),

                           //Text: label untuk field password
                          const Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 6),

                           //TextFormField: input field untuk password
                          TextFormField(
                            //obscureText: menyembunyikan teks password
                            obscureText: _obscurePassword,

                            decoration: InputDecoration(
                              hintText: 'Masukkan password',

                              prefixIcon: const Icon(
                                Icons.lock_outline,
                                size: 20,
                              ),

                              //suffixIcon: ikon di sebelah kanan untuk toggle visibility
                              suffixIcon: IconButton(
                                icon: Icon(
                                  //Conditional: menampilkan ikon berbeda berdasarkan state
                                  _obscurePassword
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined,
                                  size: 20,
                                ),

                                //onPressed: callback saat ikon di-tap
                                onPressed: () {
                                  //setState: memperbarui state dan rebuild widget
                                  setState(() {
                                    _obscurePassword =
                                        !_obscurePassword;
                                  });
                                },
                              ),

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9),
                                borderSide: const BorderSide(
                                  color: Colors.yellow,
                                  width: 2,
                                ),
                              ),

                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(9),
                                borderSide: const BorderSide(
                                  color: Colors.yellow,
                                  width: 2,
                                ),
                              ),

                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 12,
                              ),
                            ),
                          ),

                           //Row: menyusun checkbox dan forgot password secara horizontal
                          Row(
                            children: [

                              //Checkbox: tombol checkbox untuk "Ingat saya"
                              Checkbox(
                                value: _rememberMe,

                                onChanged: (value) {
                                  setState(() {
                                    _rememberMe = value ?? false;
                                  });
                                },

                                visualDensity:
                                    VisualDensity.compact,
                              ),

                              //Text: label untuk checkbox
                              const Text(
                                'Ingat saya',
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),

                              //Spacer: mengisi ruang kosong di antara widgets
                              const Spacer(),

                              //TextButton: tombol "Lupa Password?" tanpa border
                              TextButton(
                                onPressed: () {
                                  // TODO:
                                  // Fungsi lupa password
                                },

                                child: const Text(
                                  'Lupa Password?',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 0, 0, 0)
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 4),

                           //SizedBox: container dengan ukuran tetap untuk button
                          SizedBox(
                            width: double.infinity,
                            height: 42,

                            //OutlinedButton: tombol LOGIN dengan styling kuning
                            child: OutlinedButton(
                              onPressed: () {
                                print('Login ditekan');
                              },
                              //styleFrom: custom styling untuk button
                              style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.yellow,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),

                              child: const Text(
                                'LOGIN',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(235, 3, 0, 0)
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 16),

                           //Row: menyusun divider dan teks "atau"
                          Row(
                            children: [

                              //Expanded: membuat divider mengisi ruang
                              const Expanded(
                                child: Divider(
                                  thickness: 0.8,
                                ),
                              ),

                              //Padding: ruang di sekitar teks "atau"
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),

                                child: Text(
                                  'atau',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),

                              const Expanded(
                                child: Divider(
                                  thickness: 0.8,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 14),

                           //SizedBox: container untuk tombol "BUAT AKUN BARU"
                          SizedBox(
                            width: double.infinity,
                            height: 42,

                             //OutlinedButton: tombol untuk navigasi ke register
                             child: OutlinedButton(
                              onPressed: () {
                                //Navigator.push: navigasi ke halaman register
                                Navigator.push(
                                  context,
                                  //MaterialPageRoute: menentukan halaman yang akan ditampilkan
                                  MaterialPageRoute(builder: (context) => RegisterPage()),
                                );
                              },

                              style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.yellow,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),


                              child: const Text(
                                'BUAT AKUN BARU',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0)
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                   //Text: footer copyright
                  Text(
                    '© 2026 My Application',
                    style: TextStyle(
                      fontSize: 10,
                      color: const Color.fromARGB(255, 158, 158, 158),
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