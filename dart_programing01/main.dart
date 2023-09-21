import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  // 1. 유저에게 어떤 타입을 낼 것인지 물어보는 질의 창
  print("가위 바위 보 중 하나 입력");
  final String userInput = stdin.readLineSync(encoding: utf8) ?? 'Error';

  // print(userInput);

  // 2. 컴퓨터가 낼 타입을 결정하는 함수
  const selectList = ['가위', '바위', '보'];
  final cpuInput = selectList[Random().nextInt(3)];
  print(cpuInput);

  // 3. 유저의 타입과 컴퓨터 타입 비교 후 결과 판별 메소드
  final result = getResult(userInput, cpuInput);
  print(result);
}

String getResult(String userInput, String cpuInput) {
  String result;

  const String cpuWin = "CPU 승리";
  const String userWin = "User 승리";
  const String noWin = "무승부";

  switch (userInput) {
    case '가위':
      if (cpuInput == '바위') {
        result = cpuWin;
      } else if (cpuInput == '보') {
        result = userWin;
      } else {
        result = noWin;
      }
      break;
    case '바위':
      if (cpuInput == '보') {
        result = cpuWin;
      } else if (cpuInput == '가위') {
        result = userWin;
      } else {
        result = noWin;
      }
      break;
    case '보':
      if (cpuInput == '가위') {
        result = cpuWin;
      } else if (cpuInput == '바위') {
        result = userWin;
      } else {
        result = noWin;
      }
      break;
    default:
      result = "잘못된 입력입니다.";
  }
  return result;
}
