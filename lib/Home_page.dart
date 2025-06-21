import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  String username;

  HomePage(this.username);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text(
          widget.username,style:
          TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    ));
  }
}
