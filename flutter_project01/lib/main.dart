import 'dart:ffi';

import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeWidget(),
  ));
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: homeBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
        ],
        currentIndex: index,
        onTap: (newIndex)=>setState(() => index = newIndex),
      ),
    );
  }

  Widget homeBody() {
    switch (index) {
      case 1:
        return Center(
            child: Icon(
          Icons.search,
          size: 100,
        ));
      case 2:
        return Center(
            child: Icon(
          Icons.person,
          size: 100,
        ));
      case 0:
      default:
        return Center(
            child: Icon(
          Icons.home,
          size: 100,
        ));
    }
  }
}
