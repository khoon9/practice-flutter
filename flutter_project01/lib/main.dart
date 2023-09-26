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
    return Column(
      children: [
        // TestCheckBox(),
        // TestRadioButton(),
        // TestSlider(),
        TestSwitch(),
        // TestPopupMenu(),
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
        Checkbox(
            value: values[0],
            onChanged: (value) => changeValue(0, value: value)),
        Checkbox(
            value: values[1],
            onChanged: (value) => changeValue(1, value: value)),
        Checkbox(
            value: values[2],
            onChanged: (value) => changeValue(2, value: value)),
      ],
    );
  }

  void changeValue(int index, {bool? value = false}) {
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

enum TestValue {
  test1,
  test2,
  test3,
}

class _TestRadioButtonState extends State<TestRadioButton> {
  TestValue? selectValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio<TestValue>(
              value: TestValue.test1,
              groupValue: selectValue,
              onChanged: (value) => changeValue(value!)),
          title: Text(TestValue.test1.name),
          onTap: () => changeValue(TestValue.test1),
        ),
        Radio<TestValue>(
            value: TestValue.test2,
            groupValue: selectValue,
            onChanged: (value) => changeValue(value!)),
        Radio<TestValue>(
            value: TestValue.test3,
            groupValue: selectValue,
            onChanged: (value) => changeValue(value!)),
      ],
    );
  }

  void changeValue(TestValue value) {
    setState(() => selectValue = value);
  }
}

class TestSlider extends StatefulWidget {
  const TestSlider({super.key});

  @override
  State<TestSlider> createState() => _TestSliderState();
}

class _TestSliderState extends State<TestSlider> {
  late double value;

  @override
  void initState() {
    super.initState();
    this.value = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${value.round()}',
          style: TextStyle(fontSize: 30),
        ),
        Slider(
          value: value,
          onChanged: (newValue) => setState(() => value = newValue),
          max: 100,
          min: 0,
          divisions: 100,
          label: value.round().toString(),
          activeColor: Colors.red,
        ),
      ],
    );
  }
}

class TestSwitch extends StatefulWidget {
  const TestSwitch({super.key});

  @override
  State<TestSwitch> createState() => _TestSwitchState();
}

class _TestSwitchState extends State<TestSwitch> {
  late bool value01;
  late bool value02;

  @override
  void initState() {
    super.initState();
    this.value01 = false;
    this.value02 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
            value: value01,
            onChanged: (newValue) => setState(() => value01 = newValue)),
        CupertinoSwitch(
            value: value02,
            onChanged: (newValue) => setState(() => value02 = newValue))
      ],
    );
  }
}

class TestPopupMenu extends StatefulWidget {
  const TestPopupMenu({super.key});

  @override
  State<TestPopupMenu> createState() => _TestPopupMenuState();
}

class _TestPopupMenuState extends State<TestPopupMenu> {
  late TestValue selectValue;

  @override
  void initState() {
    super.initState();
    selectValue = TestValue.test1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(selectValue.name),
        PopupMenuButton(itemBuilder: (context) {
          return TestValue.values
              .map((value) =>
                  PopupMenuItem(value: value, child: Text(value.name)))
              .toList();
        }, onSelected: (newValue)=>setState(() => selectValue = newValue),),
      ],
    );
  }
}
