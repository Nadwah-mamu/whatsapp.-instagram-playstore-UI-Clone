import 'package:flutter/material.dart';
import 'package:instagram/utilities.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black12,
                borderRadius: BorderRadius.circular(10)
              ),
              height: 40,
              margin: EdgeInsets.all(10),
              // width: 70,
              child: TextField(

                cursorColor: Colors.black12,
                cursorHeight: 22,
                decoration: InputDecoration(

                  border: OutlineInputBorder(

                    borderSide: BorderSide.none
                  ),
                  hintText: "Search",

                      contentPadding: EdgeInsets.all(8),
                      prefixIcon: Icon(Icons.search,color: Colors.black,size: 25,)
                ),
              ),
            ),
            SizedBox(height: 15,),
            Expanded(
              child: GridView.builder(
                itemCount: Utilites.Images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5),
              itemBuilder: (builder,index){
              return Container(
                height: 100,
                width: 100,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(Utilites.Images[index]),
                ),

              );
              }
    ),
            )
          ],
        ),
      ),
    );
  }
}
