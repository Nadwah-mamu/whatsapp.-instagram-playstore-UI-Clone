import 'dart:io';

import 'package:flutter/material.dart';
import 'package:instagram/SearchPage.dart';
import 'package:instagram/utilities.dart';

class HomePage extends StatefulWidget {
  File? image;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            height: 30,
            width: 40,
            // color: Colors.grey,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5, top: 5),
                  child: Icon(
                    Icons.chat_bubble,
                    size: 40,
                    color: Colors.black,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 15,
                    width: 15,
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                height: 110,
                color: Colors.white,
                child: ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: Utilites.Images.length,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Container(
                          height: 80,
                          width: 80,
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  child: Center(
                                      child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 22,
                                  )),
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      border: Border.all(
                                          color: Colors.white, width: 1.5),
                                      shape: BoxShape.circle),
                                ),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/IMG-20210202-WA0012.jpg",
                                  ))),
                        );
                      }

                      return Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: Color.fromRGBO(228, 64, 95, 7)),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(Utilites.Images[index]))),
                      );
                    })),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: Utilites.imgdisplay.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Card(
                          elevation: 2,
                          child: Container(
                              // height: 300,
                              // color: Colors.grey.shade200,
                              child: Column(children: [
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.only(top: 8, left: 8),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "assets/IMG-20210228-WA0011.jpg"))),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "Book of Teenager",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              height: 170,
                              // width: 170,
                              child: Image(
                                fit: BoxFit.fitWidth,
                                image: FileImage(Utilites.imgdisplay[index]),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(Icons.favorite_border),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(Icons.comment),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(Icons.share),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "82 Likes",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    " Flower",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            )
                          ]))),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
