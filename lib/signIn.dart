import 'package:flutter/material.dart';
import 'forgotpassword.dart';
import 'getstarted.dart';
import 'signup.dart'; // Import file halaman "Get Started"

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isObscure = true;
  bool _isHovering = false;

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
                    'Welcome\nBack!',
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
                labelText: 'Username or Email',
                hintStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12.0,
                  fontWeight: FontWeight.normal,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 25.0),
            TextFormField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10.0),
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  _isHovering = true;
                });
              },
              onExit: (_) {
                setState(() {
                  _isHovering = false;
                });
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: _isHovering
                            ? const Color.fromARGB(255, 255, 37, 84)
                            : const Color.fromARGB(255, 255, 37, 84),
                        decoration: _isHovering
                            ? TextDecoration.underline
                            : TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 65.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          GetStarted()), // Navigasi ke halaman "Get Started"
                );
              },
              child: Container(
                width: double.infinity,
                height: 50.0,
                child: Center(
                  child: Text(
                    'Login',
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
            SizedBox(height: 40.0),
            Center(
              child: Text(
                '- OR Continue with -',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildSocialIconButton('images/google.png', 35.0),
                SizedBox(width: 20.0),
                buildSocialIconButton('images/apple.png', 35.0),
                SizedBox(width: 20.0),
                buildSocialIconButton('images/facebook.png', 35.0),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create An Account ',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SignUpScreen()), // Ganti SignUpScreen() dengan halaman sign up yang sesuai
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 37, 84),
                      fontSize: 16.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSocialIconButton(String imagePath, double iconSize) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: CircleAvatar(
        radius: iconSize, // Mengatur ukuran ikon
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}
