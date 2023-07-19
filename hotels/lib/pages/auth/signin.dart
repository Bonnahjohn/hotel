// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/pages/auth/signup.dart';
import 'package:hotels/pages/home.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/sup.jpg'), fit: BoxFit.cover)),
        child: Formin(),
      ),
    );
  }
}

class Formin extends StatefulWidget {
  const Formin({super.key});

  @override
  State<Formin> createState() => _ForminState();
}

class _ForminState extends State<Formin> {
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
                height: 100,
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
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.snackbar(
                          colorText: Colors.red,
                          'Under maintenance',
                          'Still working on the forgot password page');
                    },
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(fontSize: 20, color: Colors.amber),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
              Center(
                child: Text(
                  'or',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
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
                      onPressed: () {
                        Get.off(() => Myhome());
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(fontSize: 25),
                      )),
                ),
              ),
              //sign with ... mmmmmmmmmmmmmmmmm
              SizedBox(
                height: 40,
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
                      text: 'Don\'t have an account?',
                      children: [
                        TextSpan(
                            text: ' Sign up',
                            style: TextStyle(color: Colors.amber),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.to(() => LoginPage());
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
