// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Editing Controllers
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _retypePasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/diamond.png'),
        title: const Text('SHRINE'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 50),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                const Text(
                  'Registrasi',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Text(
                    'Lorem Ipsum dolar sit amet, consectetur adipiscing elit')
              ],
            ),
            const SizedBox(height: 90),

            const Text(
              'Masukan Nama User',
              style: TextStyle(
                  letterSpacing: .5,
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            //Username
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                ),
                labelText: 'Username',
                contentPadding: EdgeInsets.only(left: 20),
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            const SizedBox(height: 12),

            const Text(
              'Masukan Password',
              style: TextStyle(
                  letterSpacing: .5,
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            // [Password]
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                ),
                labelText: 'Password',
                contentPadding: EdgeInsets.only(left: 20),
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 12),

            const Text(
              'Masukan Kembali Password',
              style: TextStyle(
                  letterSpacing: .5,
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            // [Masukan Password] Kembali
            TextField(
              controller: _retypePasswordController,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                ),
                labelText: 'Password',
                contentPadding: EdgeInsets.only(left: 20),
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),

            //OverflowBar - Button Next & Cancel
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                    onPressed: () {
                      _usernameController.clear();
                      _passwordController.clear();
                      _retypePasswordController.clear();
                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Radius tombol
                      ),
                    ),
                    child: const Text('Hapus',
                        style:
                            TextStyle(height: 3.5, color: Colors.deepPurple))),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, '/');
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Radius tombol
                    ), // Warna latar belakang tombol
                  ),
                  child: const Text('Daftar', style: TextStyle(height: 3.5)),
                )
              ],
            ),
            const SizedBox(height: 120),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sudah Punya Akun? ',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                const SizedBox(width: 12),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
