import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_marjan/auth/login_siswa_anjani.dart';

import '../pages/home_page.dart';

class RegisterSiswaAnjani extends StatefulWidget {
  const RegisterSiswaAnjani({super.key});

  @override
  State<RegisterSiswaAnjani> createState() => _RegisterSiswaAnjaniState();
}

class _RegisterSiswaAnjaniState extends State<RegisterSiswaAnjani> {
  TextEditingController _nama = TextEditingController();
  TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();
  bool _isSecure = true;
  IconData _icon = Icons.remove_red_eye;

  void isSecure() {
    setState(() {
      if (_isSecure) {
        _isSecure = false;
        _icon = CupertinoIcons.eye_slash;
      } else {
        _isSecure = true;
        _icon = CupertinoIcons.eye_fill;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/pnddkn.png", height: 100, width: 100),
              SizedBox(height: 30),
              Text(
                "SELAMAT DATANG",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _nama,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.pink.shade50.withValues(alpha: 0.7),
                  label: Text("NAMA"),
                  hintText: "Nama",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _password,
                keyboardType: TextInputType.text,
                obscureText: _isSecure,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.pink.shade50.withValues(alpha: 0.5),
                  hintText: "Password",
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  suffix: IconButton(onPressed: isSecure, icon: Icon(_icon)),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _confirmpassword,
                keyboardType: TextInputType.text,
                obscureText: _isSecure,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.pink.shade50.withValues(alpha: 0.5),
                  hintText: " Confrim Password",
                  labelText: "Confrim Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  suffix: IconButton(onPressed: isSecure, icon: Icon(_icon)),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(0),
                    ),
                  ),
                  fixedSize: WidgetStatePropertyAll(Size(200, 1)),
                  backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
                ),
                onPressed: () {
                  setState(() {
                    if (_confirmpassword.text == _password.text &&
                        _password.text.isNotEmpty &&
                        _nama.text.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) =>
                            AlertDialog(title: Text("DAFTAR GAGAL")),
                      );
                    }
                  });
                },
                child: Text("DAFTAR", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    "Sudah punya akun?",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginSiswa()),
                    ),
                    child: Text(
                      " login",
                      style: TextStyle(color: Colors.purpleAccent),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
