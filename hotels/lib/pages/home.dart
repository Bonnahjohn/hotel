// ignore_for_file: unused_import, depend_on_referenced_packages, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'dart:ffi';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'mainhome.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  static List<Widget> EachPage = [
    MainHome(),
    Center(
        child: Text(
      'DUMMY PAGE',
      style: TextStyle(color: Colors.white),
    )),
    Center(
        child: Text(
      'DUMMY PAGE',
      style: TextStyle(color: Colors.white),
    )),
    Center(
        child: Text(
      'DUMMY PAGE',
      style: TextStyle(color: Colors.white),
    )),
  ];
  int Counter = 0;

  void moves(int index) {
    setState(() {
      Counter = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                Get.snackbar(
                    colorText: Colors.white,
                    snackPosition: SnackPosition.TOP,
                    backgroundColor: Colors.teal,
                    'Is just a dummy',
                    'It is where the notification will shows up');
              },
              icon: Icon(Icons.notifications_active))
        ],
      ),
      drawer: Drawer(backgroundColor: Colors.amber.withOpacity(0.9)),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: EachPage.elementAt(Counter)),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: BottomNavigationBar(
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.amber,
              currentIndex: Counter,
              onTap: moves,
              backgroundColor: Colors.white30,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.mail), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_active), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
              ]),
        ),
      ),
    );
  }
}
