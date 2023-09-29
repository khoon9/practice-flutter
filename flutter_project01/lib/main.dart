import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project01/screen/new_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MaterialApp.router(
    routerConfig: GoRouter(initialLocation: '/', routes: [
      GoRoute(
          path: '/', name: 'home', builder: (context, _) => const HomeWidget()),
      GoRoute(
          path: '/new1',
          name: 'new1',
          builder: (context, _) => const NewPage(),
          routes: [],
      ),
      GoRoute(
          path: '/new2',
          name: 'new2',
          builder: (context, _) => const NewPage2()),
    ]),
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
          onPressed: () {
            context.pushNamed('new1');
          },
        ),
      ),
    );
  }
}
