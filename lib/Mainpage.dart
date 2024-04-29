

import 'package:flutter/material.dart';
import 'package:instagram/Addphoto.dart';
import 'package:instagram/HomePage.dart';
import 'package:instagram/ReelsPage.dart';
import 'package:instagram/SearchPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int seleectedindex=0;
  List pages=[HomePage(),SearchPage(),ReelsPage(),AddPhoto()];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedIconTheme: IconThemeData(
          size: 35
        ),

        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home,color: Colors.black,),label: ""),
          BottomNavigationBarItem(icon:Icon(Icons.search,color: Colors.black,),label: ""),
          BottomNavigationBarItem(icon:Icon(Icons.ondemand_video,color: Colors.black,),label: ""),
          BottomNavigationBarItem(icon:Icon(Icons.add_card,color: Colors.black,),label: ""),
          BottomNavigationBarItem(label : "",icon:Container(
    height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/IMG-20210228-WA0011.jpg")
              )
            ),

          ))
        ],
        currentIndex: seleectedindex,
        onTap: (v){
         setState(() {
           seleectedindex=v;
         });
        },
      ),
      body: pages[seleectedindex],
    );
  }
}
