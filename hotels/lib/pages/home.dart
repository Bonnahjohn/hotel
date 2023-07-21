// ignore_for_file: unused_import, depend_on_referenced_packages, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'dart:ffi';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  static List<Widget> EachPage = [
    Text('1'),
    Text('2'),
    Text('3'),
    Text('4'),
    Text('5')
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
      drawer: Drawer(backgroundColor: Colors.amber.withOpacity(0.9)),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: EachPage.elementAt(Counter)
              //
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     SizedBox(
              //       height: 70,
              //     ),
              //     Text(
              //       'Hi  Daniyal',
              //       style: TextStyle(color: Colors.white, fontSize: 22),
              //     ),
              //     Text(
              //       'Find your hotel to stay',
              //       style: TextStyle(color: Colors.white, fontSize: 16),
              //     ),
              //     SizedBox(
              //       height: 30,
              //     ),
              //     TextFormField(
              //       autocorrect: true,
              //       decoration: InputDecoration(
              //           suffixIcon: Icon(
              //             Icons.sort_by_alpha,
              //             color: Colors.white,
              //           ),
              //           prefixIcon: Icon(
              //             Icons.search,
              //             color: Colors.white,
              //           ),
              //           hintText: 'Search here',
              //           hintStyle: TextStyle(color: Colors.white),
              //           contentPadding:
              //               EdgeInsets.symmetric(vertical: 19, horizontal: 20),
              //           fillColor: Colors.white24,
              //           filled: true,
              //           border: OutlineInputBorder(
              //               borderSide: BorderSide.none,
              //               borderRadius: BorderRadius.all(Radius.circular(20)))),
              //     ),
              //   ],
              // ),
              ),
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
