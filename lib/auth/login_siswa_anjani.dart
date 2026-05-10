import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_marjan/auth/register_siswa_anjani.dart';
import 'package:project_marjan/pages/home_page_siswa_anjani.dart';

class LoginSiswa extends StatefulWidget {
  const LoginSiswa({super.key});

  @override
  State<LoginSiswa> createState() => _LoginSiswaState();
}

class _LoginSiswaState extends State<LoginSiswa> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _isSecure = true;
  IconData _icon = Icons.remove_red_eye;
  bool _norRobot = true;

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
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "SELAMAT DATANG",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Atur jadwal lesmu dengan mudah",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height:30),
              Image.asset("assets/images/pnddkn.png",height: 100,width: 100,),
              SizedBox(height: 30),
              TextField(
                controller: _username,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.pink.shade50.withValues(alpha: 0.7),
                  hintText: "Username",
                  labelText: "Isi Username kamu",
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
                  labelText: "rahmaanjani",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  suffix: IconButton(onPressed: isSecure, icon: Icon(_icon)),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: _norRobot,
                    onChanged: (value) {
                      setState(() {
                        _norRobot = !_norRobot;
                      });
                    },
                  ),
                  Text("I'm not a robot", style: TextStyle(color: Colors.white)),
                ],
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
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.blueAccent,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    if (_username.text == "Anjani" &&
                        _password.text == "rahmaanjani") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePageSiswa()),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) =>
                            AlertDialog(title: Text("LOGIN GAGAL")),

                      );
                    }
                  });
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
                ),
              ),
          SizedBox(height: 20),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                "Belum punya akun?",
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterSiswaAnjani()),
                ),
                child: Text(
                  " Daftar",
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
