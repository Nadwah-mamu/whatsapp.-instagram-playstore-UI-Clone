import 'package:flutter/material.dart';

class Foryou extends StatefulWidget {
  const Foryou({Key? key}) : super(key: key);

  @override
  State<Foryou> createState() => _ForyouState();
}

class _ForyouState extends State<Foryou> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
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
          )
        ],
      ),
    );
  }
}
