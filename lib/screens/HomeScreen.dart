import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';
import 'package:ride_app/Components/Drawer.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 30, 31, .9),
      appBar: AppBar(
        title: Text('Home'),
      ),
      body:  Container(
      
    ),
    drawer: DrawerComponent()
    );
  }
}