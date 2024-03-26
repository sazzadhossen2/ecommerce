import 'package:ecommerce/screen/productItems.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            myAppBar(),
            search(),
            CategorySection(),
            ProductItem(),
          ],
        ),
      ),
    );
  }

  Padding search() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 70,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                color: Colors.grey[300]
              ),
              child: TextField(

                decoration: InputDecoration(
                  prefixIcon:Icon(Icons.search,size: 30,),
                  hintText: "Search",
                  helperStyle:TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold
                  ) ,
                  border: OutlineInputBorder(
                   borderSide: BorderSide.none
                  )
                ),
              ),
            ),
          );
  }

  Padding myAppBar() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                ),
                Text(
                  "Explore",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  "images/menu.png",
                  height: 25,
                )
              ],
            ),
          );
  }
}
