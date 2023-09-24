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
    return const Column(
      children: [
        ExampleStateless(),
        ExampleStateful(index: 3),
      ],
    );
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class ExampleStateful extends StatefulWidget {
  final int index;

  const ExampleStateful({required this.index,super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}
class _ExampleStatefulState extends State<ExampleStateful> {
  // 언더바 는 private 변수를 의미한다
  late int _index;
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    _index = widget.index;
    textEditingController = TextEditingController();
  }

  // 이 안에서 Stream 을 사용하거나 다른 네트워크 통신 객체를 가져가서 쓴다던지
  // 스크롤 컨트롤러나 텍스트 컨트롤러 객체들이 상황 종결임을 알려주는 역할을 수행하여 리소스를 반환
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // GestureDetector 란 위젯안에서 특정한 엑션에 대해 감지하는 역할을 수행한다.
    return Expanded(
      child: GestureDetector(
        onTap: (){
          // state 가 바뀌었다는 걸 위젯한테 알려준다.
          setState(() {

          });
          if(_index == 5){
            _index = 0;
            return;
          }
          _index++;
        },
        child: Container(
        color: Colors.green.withOpacity(_index/5),
          child: Center(
            child: Text('$_index'),
          ),
        ),
      ),
    );
  }
}
