import 'package:flutter/material.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image(
            fit: BoxFit.fill,
            image: AssetImage("assets/IMG-20210228-WA0011.jpg"),
          ),
        ),
      ),
    );
  }
}
