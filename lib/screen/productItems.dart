import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/data_model.dart';
import 'details_screen.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key});

  @override
  State<ProductItem> createState() => _ProductItemsState();
}

class _ProductItemsState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.66
            ),
            itemCount:productItems.length ,
            itemBuilder: (context, index) {
              Size size=MediaQuery.of(context).size;
              final product=productItems[index];
return Transform.translate(offset:Offset(0,index.isOdd?28:0),
child: GestureDetector(
  onTap: (){
    Get.to(()=>DetailsScreen(product: product,));
  },
  child:Padding(
    padding: const EdgeInsets.only(right: 10,left: 10,top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
borderRadius:BorderRadius.circular(20) ,
          child: Hero(
            tag: product.imageUrl,
            child: Image(
              height: size.height *0.25,
              width: size.width *0.45,
              image: AssetImage(
              product.imageUrl
            ),fit: BoxFit.cover,),
          ),
        ),
        Text(product.name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        Text(product.manufacturer,style: TextStyle(fontSize: 14,color: Colors.grey[700]),)
      ],
    ),
  ) ,
),
);
            }),
      ),
    );
  }
}
