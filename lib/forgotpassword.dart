import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 70.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Forgot \npassword?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 50.0),
                ],
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter your email address',
                hintStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey[800],
                  ),
                  children: [
                    TextSpan(
                      text: '* ',
                      style: TextStyle(
                        color: Colors.red, // Warna merah untuk "*"
                        fontSize: 17.0,
                      ),
                    ),
                    TextSpan(
                      text:
                          'We will send you a message to set or reset\nyour new password',
                          style: TextStyle(
                            fontSize: 17.00,
                          )
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 65.0),
            ElevatedButton(
              onPressed: () {},
              child: Container(
                width: double.infinity,
                height: 50.0,
                child: Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 255, 37, 84),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
