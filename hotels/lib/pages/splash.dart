// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotels/pages/auth/login.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.off(() => HomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fan.jpg'), fit: BoxFit.cover)),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fs.jpg'), fit: BoxFit.cover)),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(
                  flex: 2,
                ),
                Text(
                  'Find Your \nFavourite\nHotel To Stay',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  'Lorem ipsum is simply dummy\ntext of the printing and typesetting\nindustry.Lorem ipsum has been the\n industry\'s standard dummy',
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
                Spacer(
                  flex: 3,
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
                          Get.off(() => LoginPage());
                        },
                        child: Text(
                          'Book    Now',
                          style: TextStyle(fontSize: 25),
                        )),
                  ),
                ),
                Spacer(
                  flex: 4,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
