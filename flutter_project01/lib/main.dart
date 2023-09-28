import 'dart:ffi';

import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project01/screen/new_page.dart';

void main() {
  runApp(MaterialApp(
    home: HomeWidget(),
  ));
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter 에서 화면 이동하기'),
      ),
      body: Center(
        child: TextButton(
          child: Text('Go to Page'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return NewPage();
            }));
          },
        ),
      ),
    );
  }
}
