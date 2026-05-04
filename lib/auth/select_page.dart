import 'package:flutter/material.dart';
import 'package:project_marjan/auth/login_siswa.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({super.key});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginSiswa()),
            );
          },
          child:Image.asset("assets/images/murid.png"),
        ),
      ),
    );
  }
}
