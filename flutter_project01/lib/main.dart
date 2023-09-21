import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      body: TestWidget()
    )
  ));
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: Center(
          child: Text("Hello, Flutter", style: TextStyle(
            fontSize: 40,
            color: Colors.black
    )),
        ),
    ));
  }
}
