// ignore_for_file: unused_import, depend_on_referenced_packages, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                //mmmmmmmmmmm menu burger and notification mmmmmmmmmmm

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_active,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
