
import 'package:demo/hompage/home_screen.dart';
import 'package:demo/widget/shoppin_cart.dart';
import 'package:flutter/material.dart';

import '../widget/favorite.dart';
import '../widget/model.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int cutIndex = 2;
  List screens = const [Scaffold(), Favorite(), HomeScreen(), CardScreen(), Scaffold()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cutIndex = 2;
          });
        },
        shape: CircleBorder(),
        backgroundColor:KprimaryColor,
        child: Icon(
          Icons.home,
          size: 25,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  cutIndex = 0;
                });
              },
              icon: Icon(Icons.grid_view_outlined,
                  size: 35, color: cutIndex == 0 ? Colors.blue : Colors.grey),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cutIndex = 1;
                });
              },
              icon: Icon(Icons.shopping_cart_outlined,
                  size: 35, color: cutIndex == 1 ? Colors.blue : Colors.grey),
            ),

            SizedBox(width: 15,),
            IconButton(
              onPressed: () {
                setState(() {
                  cutIndex = 3;
                });
              },
              icon: Icon(Icons.favorite_border_outlined,
                  size: 35, color: cutIndex == 3 ? Colors.blue : Colors.grey),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cutIndex = 4;
                });
              },
              icon: Icon(Icons.person,
                  size: 35, color: cutIndex == 4 ? Colors.blue : Colors.grey),
            ),
          ],
        ),
      ),
      body: screens[cutIndex],
    );
  }
}
