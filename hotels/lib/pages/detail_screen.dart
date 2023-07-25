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
                          color: Colors.black,
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              'Top Rated',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 190,
            ),
            Row(
              children: [
                Text('4.9', style: TextStyle(color: Colors.white)),
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
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text(
            'Hotel Paradise',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(left: 14, top: 10),
            child: Text(
              'Lorem ipsum is simply dummytext of \nthe printing and typesetting industry.\nLorem ipsum',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                height: 100,
                width: 100,
                child: Center(
                    child: Text(
                  'Map',
                  style: TextStyle(fontSize: 22, color: Colors.black),
                )),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                height: 100,
                width: 120,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Hotel Rents',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '\$500/night',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Card(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.orange,
                      size: 35,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    child: Icon(
                      Icons.share,
                      color: Colors.orange,
                      size: 35,
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
