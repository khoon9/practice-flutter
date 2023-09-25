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
    return Column(
      children: [
        // TestCheckBox(),
        TestRadioButton(),
      ],
    );
  }
}

class TestCheckBox extends StatefulWidget {
  const TestCheckBox({super.key});

  @override
  State<TestCheckBox> createState() => _TestCheckBoxState();
}

class _TestCheckBoxState extends State<TestCheckBox> {
  late List<bool> values;


  @override
  void initState() {
    super.initState();
    values = [false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: values[0], onChanged: (value) => changeValue(0, value: value)),
        Checkbox(value: values[1], onChanged: (value) => changeValue(1, value: value)),
        Checkbox(value: values[2], onChanged: (value) => changeValue(2, value: value)),
      ],
    );
  }

  void changeValue(int index, {bool? value = false}){
    setState(() {
      values[index] = value!;
    });
  }

}

class TestRadioButton extends StatefulWidget {
  const TestRadioButton({super.key});

  @override
  State<TestRadioButton> createState() => _TestRadioButtonState();
}

enum TestRadioValue{
  test1,
  test2,
  test3,
}

class _TestRadioButtonState extends State<TestRadioButton> {
  TestRadioValue? selectValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Radio<TestRadioValue>(value: TestRadioValue.test1, groupValue: selectValue, onChanged: (value)=> changeValue(value!)),
        Radio<TestRadioValue>(value: TestRadioValue.test2, groupValue: selectValue, onChanged: (value)=> changeValue(value!)),
        Radio<TestRadioValue>(value: TestRadioValue.test3, groupValue: selectValue, onChanged: (value)=> changeValue(value!)),
      ],
    );
  }
  void changeValue(TestRadioValue value) {
    setState(() => selectValue = value);
  }
}

