import 'package:ecommerce/models/data_model.dart';
import 'package:ecommerce/screen/productDetails_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../teat.dart';
import 'curveImage.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({super.key, required this.product});

  ProductModel product;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ///for images
            productDetailsImage(size),

            ///App bar

            ///for item details
            ProductDetailsItems(products: widget.product),

            myAppBar(),
          ],
        ),
      ),
    );
  }

  ClipPath productDetailsImage(Size size) {
    return ClipPath(
      clipper: CurveImages(),
      child: Align(
        alignment: Alignment.topCenter,
        child: Center(
          child: Hero(
            tag: widget.product.imageUrl,
            child: Image(
              height: size.height * 0.6,
              image: AssetImage(widget.product.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Padding myAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 25,
            ),
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
