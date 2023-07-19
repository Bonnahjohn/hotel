// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/waaw.jpg'), fit: BoxFit.cover)),
        child: FormsControl(),
      ),
    );
  }
}

class FormsControl extends StatefulWidget {
  const FormsControl({super.key});

  @override
  State<FormsControl> createState() => _FormsControlState();
}

class _FormsControlState extends State<FormsControl> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Text(
              'New Account',
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              autocorrect: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.mail_outline,
                    color: Colors.white,
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 19, horizontal: 20),
                  fillColor: Colors.black,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
            //User name mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
            SizedBox(
              height: 20,
            ),
            TextFormField(
              autocorrect: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,
                  ),
                  hintText: 'Username',
                  hintStyle: TextStyle(color: Colors.white),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 19, horizontal: 20),
                  fillColor: Colors.black,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
            //password mmmmmmmmmmmmmmmmm
            SizedBox(
              height: 20,
            ),
            TextFormField(
              autocorrect: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Colors.white,
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 19, horizontal: 20),
                  fillColor: Colors.black,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
          ],
        ),
      ),
    ));
  }
}
