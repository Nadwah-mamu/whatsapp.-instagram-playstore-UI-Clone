import 'package:flutter/material.dart';
import 'package:untitled3/Whatsapp/utilites.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            title: Padding(
              padding: const EdgeInsets.only(
                  top: 5, bottom: 9),
              child: Text(
                "Create call link",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            subtitle: Text(
              "Share a link for your WhatsApp call",
              style: TextStyle(
                  fontSize: 15, color: Colors.black45),
            ),
            leading: Container(
              height: 60,
              width: 60,
              margin: EdgeInsets.only(
                top: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.teal.shade700,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.link_outlined,
                color: Colors.white,
                size: 24,
              ),
            )),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 5, bottom: 5),
              child: Text(
                "Recent ",
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
                itemBuilder: (context, index) {
                  return ListTile(
                    trailing: Icon(Icons.call,
                        color: Colors.teal.shade700),
                    leading: Container(
                      height: 60,
                      width: 60,
                      // margin: EdgeInsets.only(left: 15, top: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
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
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.call_made,
                          color: Colors.green,
                        ),
                        Text(
                          Utilites.Statusdisplay[index]["time"]!,
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
