import 'package:flutter/material.dart';

class Topcharts extends StatefulWidget {
  const Topcharts({Key? key}) : super(key: key);

  @override
  State<Topcharts> createState() => _TopchartsState();
}

class _TopchartsState extends State<Topcharts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 70,
                margin: EdgeInsets.only(left: 10, top: 15),
                child: Center(
                  child: Text("Top free"),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade300,
                ),
              ),
              Container(
                height: 40,
                width: 70,
                margin: EdgeInsets.only(left: 10, top: 15),
                child: Center(
                  child: Text("Categories"),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade300,
                ),
              )
            ],
          ),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: 200,
              margin: EdgeInsets.only(left: 10,top: 10),
              
              decoration: BoxDecoration(
                  // color: Colors.grey.shade500,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Container(
                      height: 100,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit:BoxFit.cover,image: NetworkImage("https://m.media-amazon.com/images/M/MV5BNGU4M2M3ZGQtZjRmYS00MjgwLTliM2EtNzAxM2MwMDlhMjI2L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNzg5OTk2OA@@._V1_.jpg"),

              )),


              ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 8),
                        child: Text("Subway Surf"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 8),
                        child: Text("Action"),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("4.4"),
                          ),
                          Text("65 MB")
                        ],
                      )
                    ],
                  )
              ]
              )
            );
          }))
        ],
      ),
    );
  }
}
