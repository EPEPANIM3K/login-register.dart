import 'package:flutter/material.dart';

//StatefulWidget: widget yang memiliki state yang dapat berubah
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

//State class untuk RegisterPage
class _RegisterPageState extends State<RegisterPage> {
  //Variable: menyimpan status visibilitas password
  bool _obscurePassword = true;
  //Variable: menyimpan status notifikasi
  bool _notification = true;
  //Variable: menyimpan status persetujuan syarat
  bool _agree = false;
  //Variable: menyimpan status persetujuan marketing
  bool _agreeMarketing = false;

  //Variable: menyimpan pilihan jenis kelamin
  String _gender = 'Laki-laki';
  //Variable: menyimpan pilihan pendidikan
  String? _education;
  //Variable: menyimpan nomor telepon
  String _phone = '';
  //Variable: menyimpan level pengalaman (0-10)
  double _experience = 0;

  //Method build: membangun UI halaman register
  @override
  Widget build(BuildContext context) {
    //Scaffold: struktur dasar halaman
    return Scaffold(
      //backgroundColor: warna latar belakang halaman
      backgroundColor: const Color(0xFFF5F7FB),

      //body: konten utama halaman
      body: SafeArea(
        //SafeArea: memastikan konten tidak tertutup status bar atau notch
        child: Center(
          //Center: menempatkan child di tengah layar
          child: SingleChildScrollView(
            //SingleChildScrollView: membuat konten bisa di-scroll
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
                      color: const Color.fromARGB(255, 236, 233, 34),
                      //BoxShape.circle: membuat container berbentuk lingkaran
                      shape: BoxShape.circle,
                    ),
                    //Icon: menampilkan ikon person_add
                    child: const Icon(
                      Icons.person_add_outlined,
                      size: 30,
                      color: Color.fromARGB(255, 255, 255, 254),
                    ),
                  ),

                  //SizedBox: spacer untuk jarak vertikal
                  const SizedBox(height: 18),

                   //Text: judul halaman register
                  const Text(
                    'Buat Akun Baru',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF202124),
                    ),
                  ),

                  const SizedBox(height: 6),

                  //Text: subtitle halaman register
                  const Text(
                    'Silakan lengkapi data untuk membuat akun',
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
                        crossAxisAlignment:
                            CrossAxisAlignment.start,

                        children: [

                           //Text: label untuk field nama lengkap
                          const Text(
                            'Nama Lengkap',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 6),

                           //TextFormField: input field untuk nama dengan border kuning
                          TextFormField(
                            //InputDecoration: styling untuk input field
                            decoration: InputDecoration(
                              //hintText: placeholder text
                              hintText:
                                  'Masukkan nama lengkap',

                              //prefixIcon: ikon di sebelah kiri input
                              prefixIcon: const Icon(
                                Icons.person_outline,
                                size: 20,
                              ),

                              //enabledBorder: border saat field tidak aktif
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(9),
                                borderSide: const BorderSide(
                                  color: Colors.yellow,
                                  width: 2,
                                ),
                              ),

                              //focusedBorder: border saat field aktif/fokus
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(9),
                                borderSide: const BorderSide(
                                  color: Colors.yellow,
                                  width: 2,
                                ),
                              ),

                              //contentPadding: ruang di dalam input field
                              contentPadding:
                                  const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 12,
                              ),
                            ),
                          ),

                          const SizedBox(height: 14),

                           //Text: label untuk field email
                          const Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 6),

                           //TextFormField: input field untuk email
                          TextFormField(
                            //keyboardType: tipe keyboard untuk email
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

                           //Text: label untuk field nomor telepon (widget baru)
                          const Text(
                            'Nomor Telepon',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 6),

                           //TextFormField: input field untuk nomor telepon (widget baru)
                          TextFormField(
                            //keyboardType: tipe keyboard untuk nomor telepon
                            keyboardType:
                                TextInputType.phone,

                            //onChanged: callback saat value berubah
                            onChanged: (value) {
                              //setState: memperbarui state
                              setState(() {
                                _phone = value;
                              });
                            },

                            decoration: InputDecoration(
                              hintText:
                                  'Masukkan nomor telepon',

                              prefixIcon: const Icon(
                                Icons.phone_outlined,
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

                           //Text: label untuk field password
                          const Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 6),

                           //TextFormField: input field untuk password dengan toggle visibility
                          TextFormField(
                            //obscureText: menyembunyikan teks password
                            obscureText: _obscurePassword,

                            decoration: InputDecoration(
                              hintText:
                                  'Masukkan password',

                              prefixIcon: const Icon(
                                Icons.lock_outline,
                                size: 20,
                              ),

                              //suffixIcon: ikon di sebelah kanan untuk toggle visibility
                              suffixIcon: IconButton(
                                icon: Icon(
                                  //Conditional: menampilkan ikon berbeda berdasarkan state
                                  _obscurePassword
                                      ? Icons
                                          .visibility_off_outlined
                                      : Icons
                                          .visibility_outlined,
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

                           //Divider: garis pemisah horizontal
                          const Divider(),

                          const SizedBox(height: 12),

                           //Text: label untuk pilihan jenis kelamin
                          const Text(
                            'Jenis Kelamin',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                           //Row: menyusun radio button secara horizontal
                          Row(
                            children: [

                               //Expanded: membuat radio mengisi ruang
                               //RadioListTile: opsi pilihan dengan radio button
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

                                  //activeColor: warna radio saat dipilih
                                  activeColor: Colors.yellow,

                                  onChanged: (value) {
                                    setState(() {
                                      _gender = value!;
                                    });
                                  },
                                ),
                              ),

                               //RadioListTile: opsi pilihan kedua
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

                           //Text: label untuk pilihan pendidikan
                          const Text(
                            'Pendidikan',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 6),

                           //DropdownButtonFormField: dropdown untuk memilih pendidikan
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

                            //items: daftar pilihan dropdown
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

                            //onChanged: callback saat pilihan berubah
                            onChanged: (value) {
                              setState(() {
                                _education = value;
                              });
                            },
                          ),

                          const SizedBox(height: 16),

                           //Text: label untuk tingkat pengalaman
                          const Text(
                            'Tingkat Pengalaman',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                           //Row: container horizontal untuk slider
                          Row(
                            children: [

                              //Text: label awal slider
                              const Text(
                                'Pemula',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),

                               //Expanded: membuat slider mengisi ruang
                               //Slider: widget untuk memilih value dalam range
                              Expanded(
                                child: Slider(
                                  value: _experience,
                                  min: 0,
                                  max: 10,
                                  //divisions: jumlah segmen slider
                                  divisions: 10,
                                  //activeColor: warna slider saat aktif
                                  activeColor: Colors.yellow,
                                  //inactiveColor: warna slider saat tidak aktif
                                  inactiveColor: Colors.grey.shade300,

                                  //onChanged: callback saat slider bergerak
                                  onChanged: (value) {
                                    setState(() {
                                      _experience = value;
                                    });
                                  },
                                ),
                              ),

                              //Text: label akhir slider
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

                           //Text: label untuk field alamat
                          const Text(
                            'Alamat',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 6),

                           //TextFormField: input field multi-line untuk alamat
                          TextFormField(
                            //maxLines: jumlah baris maksimal
                            maxLines: 3,

                            decoration: InputDecoration(
                              hintText:
                                  'Masukkan alamat lengkap',

                              //Padding: memberikan space untuk icon
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

                           //Divider: garis pemisah horizontal
                          const Divider(),

                          const SizedBox(height: 12),

                           //Row: container untuk notifikasi toggle
                           //Column: nested column untuk text description
                          Row(
                            children: [

                              //Expanded: membuat column mengisi ruang
                              const Expanded(
                                child: Column(
                                  //crossAxisAlignment: alignment horizontal
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,

                                  children: [

                                    //Text: judul notifikasi
                                    Text(
                                      'Notifikasi',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight:
                                            FontWeight.w600,
                                      ),
                                    ),

                                    SizedBox(height: 2),

                                    //Text: deskripsi notifikasi
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

                               //Switch: toggle button untuk notifikasi
                              Switch(
                                value: _notification,
                                //activeColor: warna saat switch aktif
                                activeColor: Colors.yellow,
                                //activeTrackColor: warna track saat aktif
                                activeTrackColor: Colors.yellow.shade200,

                                onChanged: (value) {
                                  setState(() {
                                    _notification = value;
                                  });
                                },
                              ),
                            ],
                          ),

                          const SizedBox(height: 12),

                           //Text: label untuk preferensi marketing (widget baru)
                          const Text(
                            'Preferensi Marketing',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 8),

                           //Row: container untuk checkbox marketing (widget baru)
                           //Checkbox: checkbox untuk menerima penawaran
                          Row(
                            children: [

                              //Checkbox: tombol checkbox
                              Checkbox(
                                value: _agreeMarketing,
                                //activeColor: warna checkbox saat dipilih
                                activeColor: Colors.yellow,
                                //checkColor: warna centang di dalam checkbox
                                checkColor: Colors.black,

                                onChanged: (value) {
                                  setState(() {
                                    _agreeMarketing =
                                        value ?? false;
                                  });
                                },
                              ),

                              //Expanded: membuat text mengisi ruang
                              const Expanded(
                                child: Text(
                                  'Terima penawaran menarik dan update terbaru',
                                  style: TextStyle(
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 12),

                           //Row: container untuk syarat checkbox
                           //Checkbox: checkbox untuk persetujuan syarat
                          Row(
                            children: [

                               //Checkbox: tombol checkbox
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

                              //Expanded: membuat text mengisi ruang
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

                          const SizedBox(height: 16),

                           //SizedBox: container dengan fixed size untuk button
                           //OutlinedButton.icon: tombol dengan icon dan label
                          SizedBox(
                            width: double.infinity,
                            height: 42,

                            child: OutlinedButton.icon(
                              onPressed: () {
                                print(
                                  'Registrasi ditekan',
                                );
                              },

                              //icon: ikon di dalam button
                              icon: const Icon(
                                Icons.app_registration,
                                size: 17,
                              ),

                              //label: teks di dalam button
                              label: const Text(
                                'REGISTRASI',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              //styleFrom: custom styling untuk button
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

                   //TextButton: tombol untuk kembali ke login
                  TextButton(
                    onPressed: () {
                      //Navigator.pop: kembali ke halaman sebelumnya
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

                   //Text: footer copyright
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