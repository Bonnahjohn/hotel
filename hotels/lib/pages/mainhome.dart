// ignore_for_file: unused_import, depend_on_referenced_packages, prefer_const_constructors

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hotels/pages/configuration.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          //mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              'Hi  Daniyal',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            Text(
              'Find your hotel to stay',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              autocorrect: true,
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.sort_by_alpha,
                    color: Colors.white,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: 'Search here',
                  hintStyle: TextStyle(color: Colors.white),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 19, horizontal: 20),
                  fillColor: Colors.white24,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Top Rated',
              style: TextStyle(color: Colors.white),
            ),
            ListTile(
              selectedTileColor: Colors.white,
              leading: Text('Hotel Paradise',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              trailing: Text('See More', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(
              height: 220,
              //width: 200,
              child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: menus.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 0.75,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) => EachProduct(
                        product: menus[index],
                        press: () {},
                      )),
            ),
          ],
        ),
      ),
    );
  }
}

class EachProduct extends StatefulWidget {
  final Products product;
  final Function press;
  const EachProduct({super.key, required this.product, required this.press});

  @override
  State<EachProduct> createState() => _EachProductState();
}

class _EachProductState extends State<EachProduct> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        child: Image.asset(
          widget.product.image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
