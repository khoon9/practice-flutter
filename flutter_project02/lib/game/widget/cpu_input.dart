import 'package:flutter/cupertino.dart';
import 'package:flutter_project02/game/enum.dart';
import 'package:flutter_project02/game/widget/input_card.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;

  const CpuInput({required this.isDone, required this.cpuInput, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(child: SizedBox.shrink()),
      InputCard(
        child: getCpuInput(),
      ),
      Expanded(child: SizedBox.shrink()),
    ]);
  }

  Widget getCpuInput() {
    if (isDone) {
      return Image.asset(cpuInput.path);
    }
    return SizedBox(
        width: 64,
        height: 64,
        child: Center(
            child: Text(
          '?',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        )));
  }
}
