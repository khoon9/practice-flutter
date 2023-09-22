import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Study To Container"),
          ),
          body: CustomContainer(),
        ),

    )
  );
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      // color: Colors.red.shade200,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      margin: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(color: Colors.red, width: 5, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.3), offset: Offset(6,6), blurRadius: 10, spreadRadius: 10),
          BoxShadow(color: Colors.blue.withOpacity(0.3), offset: Offset(-6,-6), blurRadius: 10, spreadRadius: 10),
        ]
      ),
      child: Center(child: Container(
          color: Colors.yellow,
          child: Text("Hello Container"))),
    );
  }
}
