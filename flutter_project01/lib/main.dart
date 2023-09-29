import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project01/screen/new_page.dart';
import 'package:flutter_project01/style/theme.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: Widget01(),
    ),
    theme:customTheme
  ));
}


class Widget01 extends StatelessWidget {
  const Widget01({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: Text('Body', style: textTheme.bodyMedium,),
    );
  }
}
