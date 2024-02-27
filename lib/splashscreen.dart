import 'dart:async';
import 'package:examp_jefri/signIn.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay 3 detik untuk menampilkan splash screen
    Timer(Duration(seconds: 3), () {
      // Navigasi ke halaman sign in setelah splash screen selesai
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => SignInScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Foto latar belakang
            Image.asset(
              'images/logo.png', // Ubah path dengan path foto Anda
              width: 400,
              height: 400,
            ),
            SizedBox(height: 20.0),
            // Icon loading
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

