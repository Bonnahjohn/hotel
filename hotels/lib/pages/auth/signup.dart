// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/pages/auth/signin.dart';

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
        child: SingleChildScrollView(
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
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.white,
                    ),
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
              //signing button mmmmmmmmmmmmmmmmm
              SizedBox(
                height: 20,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(19)),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.amber),
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  vertical: 18, horizontal: 70))),
                      onPressed: () {},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 25),
                      )),
                ),
              ),
              //sign with ... mmmmmmmmmmmmmmmmm
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'or continue with',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(180)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.g_mobiledata_outlined,
                          size: 40,
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(180)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.linked_camera_outlined,
                          size: 40,
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(180)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.install_desktop_rounded,
                          size: 40,
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text.rich(
                  style: TextStyle(color: Colors.white),
                  TextSpan(
                      style: TextStyle(fontSize: 20),
                      text: 'Already have an account?',
                      children: [
                        TextSpan(
                            text: ' Login',
                            style: TextStyle(color: Colors.amber),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.to(() => Signin());
                              })
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
