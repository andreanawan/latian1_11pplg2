import 'package:flutter/material.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
            child: Image.asset(
            'assets/rus.jpeg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
            ),
            ),

            Text(
              "Welcome to our application",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Text(
              "Please fill username and password below",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: OutlinedButton(
                onPressed: () {
                  // Tampilkan snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Login berhasil!"),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: Text('Login'),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Text('Register'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
