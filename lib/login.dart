import 'package:flutter/material.dart';
import 'package:flutter_application_1/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;
  bool _rememberMe = false;

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
                      color: const Color.fromRGBO(226, 223, 23, 1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.lock_outline,
                      size: 30,
                      color: Color.fromARGB(255, 247, 247, 246),
                    ),
                  ),

                  const SizedBox(height: 18),

                   //judul
                  const Text(
                    'Selamat Datang',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF202124),
                    ),
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    'Silakan login untuk melanjutkan',
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

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
                             keyboardType: TextInputType.emailAddress,

                             decoration: InputDecoration(
                               hintText: 'Masukkan email',

                               prefixIcon: const Icon(
                                 Icons.email_outlined,
                                 size: 20,
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
                               hintText: 'Masukkan password',

                               prefixIcon: const Icon(
                                 Icons.lock_outline,
                                 size: 20,
                               ),

                               suffixIcon: IconButton(
                                 icon: Icon(
                                   _obscurePassword
                                       ? Icons.visibility_off_outlined
                                       : Icons.visibility_outlined,
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

                           //ingat saya + lupa password
                          Row(
                            children: [

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

                              const Text(
                                'Ingat saya',
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),

                              const Spacer(),

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

                           //button login
                          SizedBox(
                            width: double.infinity,
                            height: 42,

                            child: OutlinedButton(
                              onPressed: () {
                                print('Login ditekan');
                              },
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

                           //pemisah atau
                          Row(
                            children: [

                              const Expanded(
                                child: Divider(
                                  thickness: 0.8,
                                ),
                              ),

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

                           //button register
                          SizedBox(
                            width: double.infinity,
                            height: 42,

                             child: OutlinedButton(
                               onPressed: () {
                                 Navigator.push(
                                   context,
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

                   //footer
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