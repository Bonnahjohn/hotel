// ignore_for_file: unused_import, depend_on_referenced_packages, prefer_const_constructors, avoid_unnecessary_containers, avoid_print

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hotels/pages/configuration.dart';
import 'package:hotels/pages/detail_screen.dart';

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
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
                    )),
              ],
            ),
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
              onTap: () {
                Get.snackbar(
                    colorText: Colors.white,
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.teal,
                    'Is just a dummy',
                    'There wil be a page for users to see all the available house.');
              },
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
                        press: () {
                          Get.to(() => DetailScreen(
                                product: menus[index],
                                key: GlobalKey(),
                              ));
                        },
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
    return GestureDetector(
      onTap: () {
        Get.snackbar(
            colorText: Colors.white,
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.teal,
            'Is just a dummy',
            'It is where the notification will shows up');
        widget.press();
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          child: Image.asset(
            widget.product.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
