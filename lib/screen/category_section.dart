import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/data_model.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  int seletedindex = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SizedBox(
        height: size.height * 0.05,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    seletedindex=index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Text(
                        categoryList[index],
                        style: TextStyle(
                            fontWeight: seletedindex == index
                                ? FontWeight.w500
                                : FontWeight.normal,
                        color: seletedindex ==index?Colors.deepOrangeAccent:Colors.black54
                        ),
                      ),
                      Container(
                        height: 3,width: 26,
                        decoration: BoxDecoration(
                            color: seletedindex ==index?Colors.deepOrangeAccent:Colors.transparent
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
