import 'package:flutter/material.dart';
import 'package:untitled3/Whatsapp/utilites.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:Utilites.abc.length,
        itemBuilder: (context, index) {

            return ListTile(
              title: Text(
                Utilites.abc![index]["name"],
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(Utilites.abc![index]["msg"]),
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(Utilites.abc![index]["photo"]))),
              ),
              trailing: Text(Utilites.abc![index]["time"]),

            );

        });
  }
}
