import 'package:flutter/material.dart';
import 'package:untitled/Login.dart';

class SignUpScreen extends StatelessWidget {
  final String title;

  const SignUpScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Sign Up',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text('Create Your account'),
            const SizedBox(height: 40),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                filled: true,
                fillColor: Colors.white30,
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                filled: true,
                fillColor: Colors.white30,
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email_outlined),

              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                fillColor: Colors.white30,
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),


            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Confirm_Password',
                filled: true,
                fillColor: Colors.white30,
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),

            const Text('OR'),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text(
                'Sign in with Google',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            const Text("Already have an account?"),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(title: 'Login'),
                  ),
                );
              },
              child: const Text('Login', style: TextStyle(color: Colors.purple)),
            ),
          ],
        ),
      ),
    );
  }
}

