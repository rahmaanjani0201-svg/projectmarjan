import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_marjan/pages/home_page_siswa_anjani.dart';

import 'auth/splash_screen.dart';


void main(){
  runApp(MyApk());
}
class MyApk extends StatefulWidget {
  const MyApk({super.key});

  @override
  State<MyApk> createState() => _MyApkState();
}

class _MyApkState extends State<MyApk> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: HomePageSiswa(),);
  }
}
