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
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.red,
                  child: Text('Container 01'),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.blue,
                  child: Text('Container 02'),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.green,
                  child: Text('Container 03'),
                ),
              ],
            ),
            Container(
              width: 300,
              height: 120,
              color: Colors.black26,
              child: Text("Container 04"),
            ),
            Container(
              width: 300,
              height: 120,
              color: Colors.black26,
              child: Text("Container 04"),
            ),
            Container(
              width: 300,
              height: 120,
              color: Colors.black26,
              child: Text("Container 04"),
            ),
            Container(
              width: 300,
              height: 120,
              color: Colors.black26,
              child: Text("Container 04"),
            ),
            Container(
              width: 300,
              height: 120,
              color: Colors.black26,
              child: Text("Container 04"),
            ),
            Container(
              width: 300,
              height: 120,
              color: Colors.black26,
              child: Text("Container 04"),
            ),
            Container(
              width: 300,
              height: 120,
              color: Colors.black26,
              child: Text("Container 04"),
            ),

          ],

        )
    );
  }
}
