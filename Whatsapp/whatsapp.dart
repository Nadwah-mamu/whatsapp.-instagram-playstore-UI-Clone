import 'package:flutter/material.dart';
import 'package:untitled3/Whatsapp/calls.dart';
import 'package:untitled3/Whatsapp/chatssection.dart';
import 'package:untitled3/Whatsapp/statussection.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this,initialIndex: 0);
    tabController!.addListener(() {
      setState(() {

      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 12),
            child: Icon(Icons.camera_alt),
          ),
          SizedBox(
            width: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 12),
            child: Icon(Icons.search),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            "WhatsApp",
            style: TextStyle(fontSize: 19, color: Colors.white),
          ),
        ),
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 18,
          ),
          controller: tabController,
          tabs: [
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            )
          ],
        ),
      ),
      floatingActionButton: tabController?.index==1 ? Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){},
          child: Icon(Icons.camera_alt),),
      SizedBox(height: 10,),
      FloatingActionButton(onPressed: (){},
      child: Icon(Icons.brush_sharp),)
    ]
      ) :



      FloatingActionButton(
          onPressed: () {},
          child: tabController?.index == 0
              ? Icon(Icons.chat)
                  : Icon(Icons.add_call),
      ),


      body: SafeArea(
        child: TabBarView(
          controller: tabController,
          children: [
            Chats(),
            Status(),
            Calls()
          ],
        ),
      ),
      //
    );
  }
}
