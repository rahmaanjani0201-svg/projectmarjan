import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project_marjan/auth/select_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer t;

  @override
  void initState() {
    t = Timer.periodic(
      const Duration(seconds: 5),
      (timer) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SelectPage()),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    t.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SmartsLess",
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
            Image.asset("assets/images/splsh.png", height: 250, width: 250,),
            SizedBox(height: 100),
            Text(
              "Developed by",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
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
            Text(
              "MARIA ANJANI",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
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
          ],
        ),
      ),
    );
  }
}
