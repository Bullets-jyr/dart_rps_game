import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  /// 1. 유저에게 어떤 타입을 낼 것인지 물어보는 질의 창
  print('가위, 바위, 보 중 하나를 정해서 입력해 주세요.');
  final String userInput = stdin.readLineSync(encoding: utf8) ?? 'Error';
  // print(userInput);

  /// 2. 컴퓨터가 낼 타입이 어떤것인지 결정하는 함수
  const selectList = ['가위', '바위', '보'];
  final cpuInput = selectList[Random().nextInt(3)];
  print(cpuInput);

  /// 3. 유저의 타입과 컴퓨터 타입에 대한 결과를 계산할 함수
  final result = getResult(userInput, cpuInput);
  print(result);
}

String getResult(String userInput, String cpuInput) {

  const cpuWin = 'CPU가 승리 하였습니다.';
  const playerWin = 'Player가 승리 하였습니다.';
  const draw = '비겼습니다.';
  String result = draw;

  switch (userInput) {
    case '가위':
      if (cpuInput == '바위') {
        result = cpuWin;
      }
      if (cpuInput == '보') {
        result = playerWin;
      }
    case '바위':
      if (cpuInput == '보') {
        result = cpuWin;
      }
      if (cpuInput == '가위') {
        result = playerWin;
      }
    case '보':
      if (cpuInput == '가위') {
        result = cpuWin;
      }
      if (cpuInput == '바위') {
        result = playerWin;
      }
    default:
      result = '올바른 값을 입력해 주세요.';
  }

  return result;
}
