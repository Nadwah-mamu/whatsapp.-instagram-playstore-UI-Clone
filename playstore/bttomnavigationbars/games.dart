import 'package:flutter/material.dart';

import '../tabbars/TopCharts.dart';


class Games extends StatefulWidget {
  const Games({Key? key}) : super(key: key);

  @override
  State<Games> createState() => _GamesState();
}




class _GamesState extends State<Games> with SingleTickerProviderStateMixin{
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

          Expanded(
            child: TabBarView(
                controller:tabController,children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8,top: 15),
                        child: Text("Based on your recent activity",style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.w500
                        ),),
                      ),

                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Card(
                          child: Container(
                            height: 170,
                            width: 200,
                            margin: EdgeInsets.only(left: 10,top: 15),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(

                                        "https://m.media-amazon.com/images/M/MV5BNGU4M2M3ZGQtZjRmYS00MjgwLTliM2EtNzAxM2MwMDlhMjI2L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNzg5OTk2OA@@._V1_.jpg"
                                    )
                                ),
                                color: Colors.red,borderRadius: BorderRadius.circular(15),boxShadow: [
                              BoxShadow(blurRadius:15,blurStyle: BlurStyle.outer)
                            ]
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            height: 170,
                            width: 200,
                            margin: EdgeInsets.only(left: 10,top: 15),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(

                                        "https://m.media-amazon.com/images/M/MV5BNGU4M2M3ZGQtZjRmYS00MjgwLTliM2EtNzAxM2MwMDlhMjI2L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNzg5OTk2OA@@._V1_.jpg"
                                    )
                                ),
                                color: Colors.red,borderRadius: BorderRadius.circular(15),boxShadow: [
                              BoxShadow(blurRadius:15,blurStyle: BlurStyle.outer)
                            ]
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Subway",style: TextStyle(
                                fontSize: 18,fontWeight: FontWeight.w700
                            ),),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Topcharts(),
              Topcharts(),
              Topcharts(),
              Topcharts(),
              Topcharts(),
            ]),
          )

        ],
      ),
    );
  }
}
