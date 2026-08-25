import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obscurePassword = true;
  bool _notification = true;
  bool _agree = false;

  String _gender = 'Laki-laki';
  String? _education;
  double _experience = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),

            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 500,
              ),

              child: Column(
                children: [

                   //icon

                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 233, 34),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.person_add_outlined,
                      size: 30,
                      color: Color.fromARGB(255, 255, 255, 254),
                    ),
                  ),

                  const SizedBox(height: 18),

                   //judul

                  const Text(
                    'Buat Akun Baru',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF202124),
                    ),
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    'Silakan lengkapi data untuk membuat akun',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 22),

                   //card form

                  Card(
                    elevation: 3,
                    shadowColor: Colors.black26,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(16),

                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,

                        children: [

                           //nama

                          const Text(
                            'Nama Lengkap',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 6),

                           TextFormField(
                             decoration: InputDecoration(
                               hintText:
                                   'Masukkan nama lengkap',

                               prefixIcon: const Icon(
                                 Icons.person_outline,
                                 size: 20,
                               ),

                               enabledBorder: OutlineInputBorder(
                                 borderRadius:
                                     BorderRadius.circular(9),
                                 borderSide: const BorderSide(
                                   color: Colors.yellow,
                                   width: 2,
                                 ),
                               ),

                               focusedBorder: OutlineInputBorder(
                                 borderRadius:
                                     BorderRadius.circular(9),
                                 borderSide: const BorderSide(
                                   color: Colors.yellow,
                                   width: 2,
                                 ),
                               ),

                               contentPadding:
                                   const EdgeInsets.symmetric(
                                 vertical: 12,
                                 horizontal: 12,
                               ),
                             ),
                           ),

                          const SizedBox(height: 14),

                           //email

                          const Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 6),

                           TextFormField(
                             keyboardType:
                                 TextInputType.emailAddress,

                             decoration: InputDecoration(
                               hintText: 'contoh@email.com',

                               prefixIcon: const Icon(
                                 Icons.email_outlined,
                                 size: 20,
                               ),

                               enabledBorder: OutlineInputBorder(
                                 borderRadius:
                                     BorderRadius.circular(9),
                                 borderSide: const BorderSide(
                                   color: Colors.yellow,
                                   width: 2,
                                 ),
                               ),

                               focusedBorder: OutlineInputBorder(
                                 borderRadius:
                                     BorderRadius.circular(9),
                                 borderSide: const BorderSide(
                                   color: Colors.yellow,
                                   width: 2,
                                 ),
                               ),

                               contentPadding:
                                   const EdgeInsets.symmetric(
                                 vertical: 12,
                                 horizontal: 12,
                               ),
                             ),
                           ),

                          const SizedBox(height: 14),

                           //password

                          const Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 6),

                           TextFormField(
                             obscureText: _obscurePassword,

                             decoration: InputDecoration(
                               hintText:
                                   'Masukkan password',

                               prefixIcon: const Icon(
                                 Icons.lock_outline,
                                 size: 20,
                               ),

                               suffixIcon: IconButton(
                                 icon: Icon(
                                   _obscurePassword
                                       ? Icons
                                           .visibility_off_outlined
                                       : Icons
                                           .visibility_outlined,
                                   size: 20,
                                 ),

                                 onPressed: () {
                                   setState(() {
                                     _obscurePassword =
                                         !_obscurePassword;
                                   });
                                 },
                               ),

                               enabledBorder: OutlineInputBorder(
                                 borderRadius:
                                     BorderRadius.circular(9),
                                 borderSide: const BorderSide(
                                   color: Colors.yellow,
                                   width: 2,
                                 ),
                               ),

                               focusedBorder: OutlineInputBorder(
                                 borderRadius:
                                     BorderRadius.circular(9),
                                 borderSide: const BorderSide(
                                   color: Colors.yellow,
                                   width: 2,
                                 ),
                               ),

                               contentPadding:
                                   const EdgeInsets.symmetric(
                                 vertical: 12,
                                 horizontal: 12,
                               ),
                             ),
                           ),

                          const SizedBox(height: 16),

                          const Divider(),

                          const SizedBox(height: 12),

                           //jenis kelamin

                          const Text(
                            'Jenis Kelamin',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          Row(
                            children: [

                               Expanded(
                                 child: RadioListTile<String>(
                                   contentPadding:
                                       EdgeInsets.zero,

                                   dense: true,

                                   title: const Text(
                                     'Laki-laki',
                                     style: TextStyle(
                                       fontSize: 11,
                                     ),
                                   ),

                                   value: 'Laki-laki',

                                   groupValue: _gender,

                                   activeColor: Colors.yellow,

                                   onChanged: (value) {
                                     setState(() {
                                       _gender = value!;
                                     });
                                   },
                                 ),
                               ),

                               Expanded(
                                 child: RadioListTile<String>(
                                   contentPadding:
                                       EdgeInsets.zero,

                                   dense: true,

                                   title: const Text(
                                     'Perempuan',
                                     style: TextStyle(
                                       fontSize: 11,
                                     ),
                                   ),

                                   value: 'Perempuan',

                                   groupValue: _gender,

                                   activeColor: Colors.yellow,

                                   onChanged: (value) {
                                     setState(() {
                                       _gender = value!;
                                     });
                                   },
                                 ),
                               ),
                            ],
                          ),

                          const SizedBox(height: 8),

                           //pendidikan

                          const Text(
                            'Pendidikan',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 6),

                           DropdownButtonFormField<String>(
                             value: _education,

                             decoration: InputDecoration(
                               hintText: 'Pilih pendidikan',

                               prefixIcon: const Icon(
                                 Icons.school_outlined,
                                 size: 20,
                               ),

                               enabledBorder: OutlineInputBorder(
                                 borderRadius:
                                     BorderRadius.circular(9),
                                 borderSide: const BorderSide(
                                   color: Colors.yellow,
                                   width: 2,
                                 ),
                               ),

                               focusedBorder: OutlineInputBorder(
                                 borderRadius:
                                     BorderRadius.circular(9),
                                 borderSide: const BorderSide(
                                   color: Colors.yellow,
                                   width: 2,
                                 ),
                               ),
                             ),

                             items: const [
                               DropdownMenuItem(
                                 value: 'SMP',
                                 child: Text('SMP'),
                               ),
                               DropdownMenuItem(
                                 value: 'SMA/SMK',
                                 child: Text('SMA / SMK'),
                               ),
                               DropdownMenuItem(
                                 value: 'D3',
                                 child: Text('Diploma / D3'),
                               ),
                               DropdownMenuItem(
                                 value: 'S1',
                                 child: Text('Sarjana / S1'),
                               ),
                               DropdownMenuItem(
                                 value: 'S2',
                                 child: Text('Magister / S2'),
                               ),
                             ],

                             onChanged: (value) {
                               setState(() {
                                 _education = value;
                               });
                             },
                           ),

                          const SizedBox(height: 16),

                           //tingkat pengalaman

                          const Text(
                            'Tingkat Pengalaman',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          Row(
                            children: [

                              const Text(
                                'Pemula',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),

                               Expanded(
                                 child: Slider(
                                   value: _experience,
                                   min: 0,
                                   max: 10,
                                   divisions: 10,
                                   activeColor: Colors.yellow,
                                   inactiveColor: Colors.grey.shade300,

                                   onChanged: (value) {
                                     setState(() {
                                       _experience = value;
                                     });
                                   },
                                 ),
                               ),

                              const Text(
                                'Ahli',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 8),

                           //alamat

                          const Text(
                            'Alamat',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 6),

                           TextFormField(
                             maxLines: 3,

                             decoration: InputDecoration(
                               hintText:
                                   'Masukkan alamat lengkap',

                               prefixIcon: const Padding(
                                 padding:
                                     EdgeInsets.only(bottom: 42),

                                 child: Icon(
                                   Icons.home_outlined,
                                   size: 20,
                                 ),
                               ),

                               enabledBorder: OutlineInputBorder(
                                 borderRadius:
                                     BorderRadius.circular(9),
                                 borderSide: const BorderSide(
                                   color: Colors.yellow,
                                   width: 2,
                                 ),
                               ),

                               focusedBorder: OutlineInputBorder(
                                 borderRadius:
                                     BorderRadius.circular(9),
                                 borderSide: const BorderSide(
                                   color: Colors.yellow,
                                   width: 2,
                                 ),
                               ),
                             ),
                           ),

                          const SizedBox(height: 16),

                          const Divider(),

                          const SizedBox(height: 12),

                           //notifikasi

                          Row(
                            children: [

                              const Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,

                                  children: [

                                    Text(
                                      'Notifikasi',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight:
                                            FontWeight.w600,
                                      ),
                                    ),

                                    SizedBox(height: 2),

                                    Text(
                                      'Aktifkan notifikasi aplikasi',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                               Switch(
                                 value: _notification,
                                 activeColor: Colors.yellow,
                                 activeTrackColor: Colors.yellow.shade200,

                                 onChanged: (value) {
                                   setState(() {
                                     _notification = value;
                                   });
                                 },
                               ),
                            ],
                          ),

                           //syarat

                          Row(
                            children: [

                               Checkbox(
                                 value: _agree,
                                 activeColor: Colors.yellow,
                                 checkColor: Colors.black,

                                 onChanged: (value) {
                                   setState(() {
                                     _agree =
                                         value ?? false;
                                   });
                                 },
                               ),

                              const Expanded(
                                child: Text(
                                  'Saya menyetujui syarat dan ketentuan',
                                  style: TextStyle(
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 8),

                          // BUTTON REGISTRASI
                          SizedBox(
                            width: double.infinity,
                            height: 42,

                            child: OutlinedButton.icon(
                              onPressed: () {
                                print(
                                  'Registrasi ditekan',
                                );
                              },

                              icon: const Icon(
                                Icons.app_registration,
                                size: 17,
                              ),

                              label: const Text(
                                'REGISTRASI',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              style:
                                  OutlinedButton.styleFrom(
                                backgroundColor:
                                    Colors.yellow,

                                foregroundColor:
                                    Colors.black,

                                shape:
                                    RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(25),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                   //kembali ke login
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },

                    child: const Text(
                      'Sudah memiliki akun? Login',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  const SizedBox(height: 5),

                   //footer
                  Text(
                    '© 2026 My Application',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
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