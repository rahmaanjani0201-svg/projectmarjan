import 'package:flutter/material.dart';
import 'package:project_marjan/auth/login_siswa.dart';

class SelectPage extends StatelessWidget {
  const SelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Masuk sebagai",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(
                    offset: Offset(1, 1),
                    color: Colors.black,
                    blurRadius: 2,
                    spreadRadius: 2,
                  ),
                ],
              ),
            ),
            SizedBox(height: 75),
            ElevatedButton(
              style: ,
                onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginSiswa(),));
            }, child: Text("Siswa"))
          ],
        ),
      ),
    );
  }
}
