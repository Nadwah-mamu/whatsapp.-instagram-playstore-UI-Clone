import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram/HomePage.dart';
import 'package:instagram/Mainpage.dart';
import 'package:instagram/utilities.dart';

class AddPhoto extends StatefulWidget {
  const AddPhoto({Key? key}) : super(key: key);

  @override
  State<AddPhoto> createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {
  TextEditingController _controller=TextEditingController();
  File? fileimage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: GestureDetector(
                onTap: () async {
                  final imagepicker = ImagePicker();
                  XFile? img =
                      await imagepicker.pickImage(source: ImageSource.camera);
                  if (img != null) {
                    setState(() {
                      fileimage = File(img.path);
                    });
                  }
                },
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.black54,
                  margin: EdgeInsets.only(bottom: 15),
                  child: Center(
                    child: Text(
                      "New Post",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            fileimage != null
                ? SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.file(fileimage!),
                  )
                : Text(""),
            SizedBox(height: 20,),
            TextField(
              controller: _controller,
            ),
            GestureDetector(
              onTap: (){
                Utilites.imgdisplay.add({"image": fileimage});
                Utilites.imgdisplay.add({"text":_controller.text});
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
                  return MainPage();
                }), (route) => false);
              },
              child: Container(
                height: 40,
                width: 40,
                color: Colors.green,
                child: Center(
                  child: Text("OK",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
