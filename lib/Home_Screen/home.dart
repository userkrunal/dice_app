import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List l1=[
    "assets/images/dice1.png",
    "assets/images/dice2.png",
    "assets/images/dice3.png",
    "assets/images/dice4.png",
    "assets/images/dice5.png",
    "assets/images/dice6.png",
  ];
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "${l1[i]}",
              height: 150,
              width: 150,
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              Random rnd=Random();
              int z= rnd.nextInt(6);
              setState(() {
                i=z;
              });
            }, child: Text("Roll"))
          ],
        ),
      ),
    );
  }
}
