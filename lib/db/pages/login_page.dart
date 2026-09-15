// import 'package:flutter/material.dart';
// import 'package:ppkd_ju_2026/db/database/db_helper.dart';
// import 'package:ppkd_ju_2026/db/models/user_login_model.dart';
// import 'package:ppkd_ju_2026/db/pages/home_pages.dart';
// import 'package:ppkd_ju_2026/widgets/tombol.dart';

// class LoginScreenDB extends StatefulWidget {
//   LoginScreenDB({super.key});

//   @override
//   State<LoginScreenDB> createState() => _LoginScreenDBState();
// }

// class _LoginScreenDBState extends State<LoginScreenDB> {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   final userController = TextEditingController();

//   final passController = TextEditingController();

//   void register() async {
//     final user = userController.text.trim();
//     final pass = passController.text;

//     if (user.isEmpty || pass.isEmpty) {
//       ScaffoldMessenger.of(
//         context,
//       ).showSnackBar(const SnackBar(content: Text('Isi semua field!')));
//       return;
//     }

//     final pengguna = UserModelSQL(email: user, password: pass);

//     bool success = await DBHelper().registerUser(pengguna);

//     if (!mounted) return; // Menghindari linter warning: 'Don't use BuildContext across async gaps'

//     if (success) {
//       ScaffoldMessenger.of(
//         context,
//       ).showSnackBar(const SnackBar(content: Text('Akun berhasil dibuat')));
//     } else {
//       ScaffoldMessenger.of(
//         context,
//       ).showSnackBar(const SnackBar(content: Text('Email sudah terdaftar!')));
//     }
//   }

//   void login() async {
//   final user = userController.text.trim();
//   final pass = passController.text;

//   if (user.isEmpty || pass.isEmpty) {
//     ScaffoldMessenger.of(
//       context,
//     ).showSnackBar(const SnackBar(content: Text('Isi semua field!')));
//     return;
//   }

//   final pengguna = await DBHelper().loginUser(user, pass);

//   if (!mounted) return; // Menghindari linter warning penggunaan BuildContext

//   if (pengguna != null) {
//     Navigator.of(context).pushAndRemoveUntil(
//       MaterialPageRoute(builder: (_) => const HomeScreen()),
//       (route) => false,
//     );
//   } else {
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(
//         content: Text('Login gagal! email atau Password salah.'),
//       ),
//     );
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Form(
//           key: formKey,
//           child: Padding(
//             padding: const EdgeInsets.all(24),
//             child: Center(
//               child: SingleChildScrollView(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     // ICON
//                     const Icon(
//                       Icons.lock,
//                       size: 80,
//                       color: Colors.blue,
//                     ),
          
//                     const SizedBox(height: 24),
          
//                     // TITLE
//                     const Text(
//                       'Login',
//                       style: TextStyle(
//                         fontSize: 32,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
          
//                     const SizedBox(height: 8),
          
//                     // SUBTITLE
//                     const Text(
//                       'Silakan masuk ke akun Anda',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.grey,
//                       ),
//                     ),
          
//                     const SizedBox(height: 32),
            
//                     // EMAIL
//                     TextFormField(
//                       controller: userController,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Email wajib diisi';
//                         } else if (!value.contains('@')) {
//                           return 'Format email tidak valid';
//                         }
//                         return null;
//                       },
//                       decoration: InputDecoration(
//                         labelText: 'Email',
//                         hintText: 'Masukkan email',
//                         prefixIcon: const Icon(Icons.email),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                     ),
          
//                     const SizedBox(height: 16),
          
//                     // PASSWORDs
//                     TextFormField(
//                       controller: passController,
//                       obscureText: true,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Password wajib diisi';
//                         } else if (value.length < 6) {
//                           return 'Password minimal 6 karakter';
//                         }
//                         return null;
//                       },
//                       decoration: InputDecoration(
//                         labelText: 'Password',
//                         hintText: 'Masukkan password',
//                         prefixIcon: const Icon(Icons.lock),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                     ),
          
//                     const SizedBox(height: 24),

//                     CustomButton(
//                       text: 'Login',
//                       onPressed: () {
//                         if (formKey.currentState!.validate()) {
//                           login();
//                         }
//                       },
//                     ), 

//                     SizedBox(height: 16),

//                     CustomButton(
//                       text: 'Register',
//                       onPressed: () {
//                         if (formKey.currentState!.validate()) {
//                           register();
//                         }
//                       },
//                     ),
          
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }