// ignore_for_file: unused_import, prefer_const_constructors, depend_on_referenced_packages, prefer_const_literals_to_create_immutables

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hotels/pages/configuration.dart';

class DetailScreen extends StatelessWidget {
  final Products product;
  const DetailScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  product.image,
                ))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: size.height * 0.5,
                        left: 10,
                        right: 10,
                      ),
                      height: 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Detail(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 60,
            ),
            Text('Top Rated'),
            SizedBox(
              width: 170,
            ),
            Row(
              children: [
                Text('4.9'),
                Icon(
                  Icons.favorite,
                  size: 15,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.favorite,
                  size: 15,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.favorite,
                  size: 15,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.favorite,
                  size: 15,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.favorite,
                  size: 15,
                  color: Colors.orange,
                ),
              ],
            )
          ],
        ),
        //mmmmmmmmmmmmmmm heading mmmmmmmmmmmmmmm
      ],
    );
  }
}
