import 'package:flutter/material.dart';
import 'package:untitled3/Whatsapp/utilites.dart';


class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 9),
            child: Text(
              "My Status",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          subtitle: Text(
            "Tap to add status update",
            style: TextStyle(
                fontSize: 15, color: Colors.black45),
          ),
          leading: Stack(children: [
            Container(
              // margin: EdgeInsets.only(top: 10),
              height: 70,
              width: 70,
              margin: EdgeInsets.only(
                top: 5,
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.shutterstock.com/image-photo/young-english-woman-isolated-on-260nw-1886964295.jpg"))),
            ),
            Positioned(
              bottom: 2,
              right: 2,[]]]]]]]]]]]]]\\\\\\\\\\\\\\\\\\\\\\\\\78
              child: Container(
                alignment: Alignment.center,
                height: 20,
                width: 20,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 15,
                ),
                decoration: BoxDecoration(
                    color: Colors.teal.shade700,
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.white, width: 1.5)),
              ),
            ),
          ]),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 5, bottom: 5),
              child: Text(
                "Recent updates",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                    fontSize: 16),
              ),
            )
          ],
        ),
        Expanded(
          child: ListView.builder(
              itemCount: Utilites.Statusdisplay.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    height: 60,
                    width: 60,
                    // margin: EdgeInsets.only(left: 15, top: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.green, width: 2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: NetworkImage(
                                Utilites.Statusdisplay[index]
                                ["image"]!))),
                  ),
                  title: Text(
                    Utilites.Statusdisplay[index]["name"]!,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    Utilites.Statusdisplay[index]["time"]!,
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
