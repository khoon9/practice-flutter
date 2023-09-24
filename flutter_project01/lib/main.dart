import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomeWidget(),
  ));
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(body: ConstraintsWidget()),
    );
  }
}

class ConstraintsWidget extends StatelessWidget {
  const ConstraintsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
                color: Colors.blue,
                child: Text(
                  'HelloWorld!HelloWorld!HelloWorld!HelloWorld!HelloWorld!HelloWorld!HelloWorld!HelloWorld!HelloWorld!HelloWorld!',
                  style: TextStyle(fontSize: 30),
                ))),
        Expanded(
            child: Container(
                color: Colors.red,
                child: Text(
                  'HelloWorld!',
                  style: TextStyle(fontSize: 30),
                ))),
      ],
    );
  }
}
