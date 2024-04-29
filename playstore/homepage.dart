import 'package:flutter/material.dart';
import 'package:playstore/playstore/bttomnavigationbars/apps.dart';
import 'package:playstore/playstore/bttomnavigationbars/games.dart';
class PlayStore1 extends StatefulWidget {
  const PlayStore1({Key? key}) : super(key: key);

  @override
  State<PlayStore1> createState() => _PlayStore1State();
}

class _PlayStore1State extends State<PlayStore1>
    with SingleTickerProviderStateMixin {
  TextEditingController a = TextEditingController();
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 6, vsync: this);
    tabController!.addListener(() {
      setState(() {});
    });
  }
  // int index=0;
  List pages=[Games(),Apps()];

  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
            height: 40,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(17))),
            child: Stack(
              children: [
                TextField(
                  controller: a,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 28,
                      ),
                      hintText: "Search for apps & games",
                      hintStyle: TextStyle(fontSize: 18),
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.keyboard_voice,
                        color: Colors.black,
                        size: 25,
                      ),
                    ))
              ],
            )),
        actions: [
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(right: 8),
            child: Center(
              child: Text(
                "n ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.green.shade900),
          )
        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (v){
          setState(() {
            selectedindex=v;
          });
        },
        currentIndex: selectedindex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: (){
                  setState(() {
                    selectedindex=0;
                  });
                },
                child: Container(
                    height: 40,
                    width: 70,
                   decoration: BoxDecoration(
                     color: selectedindex==0 ? Colors.blue.shade100:Colors.white,
                     borderRadius: BorderRadius.circular(15)
                   ),
                    child: Icon(Icons.videogame_asset_sharp,color:Colors.black ,size: 28,)),
              ),
              label: "Games",),
          BottomNavigationBarItem(icon: GestureDetector(
            onTap: (){
              setState(() {
                selectedindex=1;
              });
            },
            child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                    color: selectedindex==1 ? Colors.blue.shade100:Colors.white,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Icon(Icons.apps,color: Colors.black,size: 28,)),
          ), label: "Apps"),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedindex=2;
                    });
                  },
                  child: Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                          color: selectedindex==2 ? Colors.blue.shade100:Colors.white,
                          borderRadius: BorderRadius.circular(15)
                      ),child: Icon(Icons.local_offer_outlined,color: Colors.black,size:28),)), label: "Offers"),
          BottomNavigationBarItem(icon: GestureDetector(
              onTap: (){
                setState(() {
                  selectedindex=3;
                });
              },
              child: Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                      color: selectedindex==3 ? Colors.blue.shade100:Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Icon(Icons.book,color: Colors.black,size: 28,))), label: "Books")
        ],
      ),
      body: pages[selectedindex],

    );
  }
}
