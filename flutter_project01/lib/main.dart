import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return TestWidget();
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  late int value;

  @override
  void initState() {
    super.initState();
    value = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        'Count : $value',
        style: const TextStyle(fontSize: 30),
      ),
      // addCounter 메소드 그 자체를 넘겨주는 것이다.
      TestButton(addCounter),
    ]);
  }

  // statefull 에서 setState 을 포함한 메소드를 선언하고
  // stateless 에서 그 메소드를 호출할 수 있도록 할 수 있음을 보여준다.
  // void addCounter() => setState(() => value++);
  void addCounter(int addValue) => setState(() => value+=addValue);

}

class TestButton extends StatelessWidget {
  // 네임드 파라미터외에 밖에다가 callback 선언
  const TestButton(this.callback, {super.key});

  // 반환값이 없는 콜벡으로 넘겨줄 때 가장 많이 사용
  // final VoidCallback callback;
  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        width: double.infinity,
        // inkwell 또한 있다. 이는 클릭시 화면이 번지는 듯한 애니메이션이 기본으로있어서 빠른 코딩 용이
        // GestureDetector 가 더 다양한 기능이 존재.
        // onTap 과 longTap 이 자주 쓰임
        child: InkWell(
          onTap: () => callback.call(5),
            child: Center(
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(border: Border.all()),
                  child: const Text(
          'Up count',
          style: TextStyle(fontSize: 24),
        ),),
            ),),);
  }
}
