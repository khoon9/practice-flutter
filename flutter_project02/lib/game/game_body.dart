import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_project02/game/widget/user_input.dart';

import 'enum.dart';
import 'widget/cpu_input.dart';
import 'widget/game_result.dart';

class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  late bool isDone;
  InputType? _userInput;
  late InputType _cpuInput;

  @override
  void initState() {
    super.initState();
    isDone = false;
    setCpuInput();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1, child: CpuInput(isDone: isDone, cpuInput: _cpuInput)),
        Expanded(flex: 1, child: GameResult(isDone: isDone, result: getResult(), callback: reset,)),
        Expanded(flex: 1, child: UserInput(isDone: isDone, userInput: _userInput,callback: setUserInput)),
      ],
    );
  }

  void setUserInput(InputType userInput){
    setState(() {
      isDone = true;
      _userInput = userInput;
    });
  }

  void setCpuInput(){
    final random = Random();
    _cpuInput = InputType.values[random.nextInt(3)];
  }

  Result? getResult(){
    if (_userInput == null) return null;

    switch(_userInput!){
      case InputType.rock:
        switch(_cpuInput){
          case InputType.rock:
            return Result.draw;
          case InputType.scissors:
            return Result.playerWin;
          case InputType.paper:
            return Result.cpuWin;
          default:
        }
      case InputType.scissors:
        switch(_cpuInput){
          case InputType.rock:
            return Result.cpuWin;
          case InputType.scissors:
            return Result.draw;
          case InputType.paper:
            return Result.playerWin;
          default:
        }
      case InputType.paper:
        switch(_cpuInput){
          case InputType.rock:
            return Result.playerWin;
          case InputType.scissors:
            return Result.cpuWin;
          case InputType.paper:
            return Result.draw;
          default:
        }
      default:
    }
  }

  void reset(){
    setState(() {
      isDone = false;
      setCpuInput();
    });
  }

}
