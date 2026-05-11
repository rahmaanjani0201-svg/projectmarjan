import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_marjan/auth/login_siswa_anjani.dart';
import 'package:project_marjan/pages/daftar_pengajar.dart';
import 'package:project_marjan/pages/jadwal_page.dart';
import 'package:project_marjan/pages/profile_page.dart';
import 'package:project_marjan/pages/settings_page.dart';
import 'package:project_marjan/pages/tambah_jadwal.dart';

import '../model/jadwal_model.dart';
import '../services/jadwal_service.dart';

class HomePageSiswa extends StatefulWidget {
  const HomePageSiswa({super.key});

  @override
  State<HomePageSiswa> createState() => _HomePageSiswaState();
}

class _HomePageSiswaState extends State<HomePageSiswa> {
  List<JadwalModel> jadwal = JadwalService().jadwal();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hai, Mariasih",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text("Semangat belajar hari ini", style: TextStyle(fontSize: 10)),
          ],
        ),
      ),
      drawer: Drawer(
        elevation: 5,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.purple.shade50,
                Colors.purple.shade400,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePageSiswa()),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.home_outlined, size: 22, color: Colors.purple),
                    SizedBox(width: 10),
                    Text("Home", style: TextStyle(fontSize: 22)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => JadwalPage()),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.calendar_month, size: 22, color: Colors.purple),
                    SizedBox(width: 10),
                    Text("Jadwal", style: TextStyle(fontSize: 22)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DaftarPengajar()),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.people_alt, size: 22, color: Colors.purple),
                    SizedBox(width: 10),
                    Text("Daftar Pengajar", style: TextStyle(fontSize: 22)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TambahJadwal()),
                  );
                },
                child: Row(
                  children: [
                    Icon(CupertinoIcons.plus, size: 22, color: Colors.purple),
                    SizedBox(width: 10),
                    Text("Tambah Jadwal", style: TextStyle(fontSize: 22)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.person, size: 22, color: Colors.purple),
                    SizedBox(width: 10),
                    Text("Profile", style: TextStyle(fontSize: 22)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsPage()),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.settings, size: 22, color: Colors.purple),
                    SizedBox(width: 10),
                    Text("Pengaturan", style: TextStyle(fontSize: 22)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginSiswa()),
                  );
                },
                child:
                Row(
                  children: [
                    Icon(Icons.logout, size: 22, color: Colors.purple),
                    SizedBox(width: 10),
                    Text("Log out", style: TextStyle(fontSize: 22)),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: jadwal.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.only(top: 20, left: 15, right: 15),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.purple.shade100,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jadwal[index].jam,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(width: 12),
                  Icon(jadwal[index].icon, size: 30, color: Colors.purple),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jadwal[index].pelajaran,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        jadwal[index].guru,
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(width: 12),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.purple),
                      color: Colors.purple.shade50,
                    ),
                    child: Text(
                      jadwal[index].status,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
