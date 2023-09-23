import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("위젯 상하좌우로 배치"),
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
        width: 100,
        height: 100,
        color: Colors.red,
        margin: const EdgeInsets.symmetric(vertical: 8),),
        Container(
        width: 100,
        height: 100,
        color: Colors.red,
        margin: const EdgeInsets.symmetric(vertical: 8),),

        Expanded(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(color: Colors.blue, height: 50, width: 50,margin: const EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.blue, height: 50, width: 50,margin: const EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.blue, height: 50, width: 50,margin: const EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.blue, height: 50, width: 50,margin: const EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.blue, height: 50, width: 50,margin: const EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.blue, height: 50, width: 50,margin: const EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.blue, height: 50, width: 50,margin: const EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.blue, height: 50, width: 50,margin: const EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.blue, height: 50, width: 50,margin: const EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.blue, height: 50, width: 50,margin: const EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.blue, height: 50, width: 50,margin: const EdgeInsets.symmetric(vertical: 8)),
                  Container(color: Colors.blue, height: 50, width: 50,margin: const EdgeInsets.symmetric(vertical: 8)),
                ],
              ),
            )
          ),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 8),),

      ],
    );
  }
}
