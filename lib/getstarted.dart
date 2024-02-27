import 'package:flutter/material.dart';
class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 400.0),
                child: Text(
                  'You want\nAuthentic, here\nyou go!',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20), // Jarak antara dua teks
              ElevatedButton(
                onPressed: () {
                  // Tambahkan logika untuk berpindah ke halaman berikutnya
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 40.0,
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary:
                      Colors.red, // Ubah warna background button menjadi merah
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
