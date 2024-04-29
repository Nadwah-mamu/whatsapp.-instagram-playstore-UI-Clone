import 'package:flutter/material.dart';

class Apps extends StatefulWidget {
  const Apps({Key? key}) : super(key: key);

  @override
  State<Apps> createState() => _AppsState();
}

class _AppsState extends State<Apps> with SingleTickerProviderStateMixin{
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(length: 6, vsync: this);
    tabController!.addListener(() { setState(() {

    });});
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          TabBar(
            labelColor: Colors.teal.shade700,
            labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            isScrollable: true,
            indicatorColor: Colors.black,
            controller: tabController,
            tabs: [
              Tab(
                text: "For you",
              ),
              Tab(
                text: "Top charts",
              ),
              Tab(
                text: "Children",
              ),
              Tab(
                text: 'Events',
              ),
              Tab(
                text: "Premium",
              ),
              Tab(
                text: "Categories",
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Popular Apps",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,color: Colors.black
                ),),
              )
            ],
          )
        ],
      ),

    );
  }
}
