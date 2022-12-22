import 'dart:io';
import 'dart:math';

int fixAns = 32;
double answer = 100;
double max = 100;
double min = 0;
int count = 0;

int round = 0;
int currentRound = 0;
int roundUser = 0;
int roundComp = 0;
int stepsUser = 0;
int stepsComp = 0;
int victoryUser = 0;
int victoryComp = 0;
int complexity = 0;
String sepor = "===================================";
void main(List<String> args) {
  stageFour();
}

void stageOne() {
  answer = 100;
  max = 100;
  min = 0;
  print(
      '\n\n$sepor$sepor\nПользователь загадывает число, а компьютер угадывает.\n$sepor$sepor\n');
  print('Выберите число от 0 до 100');
  fixAns = int.parse(stdin.readLineSync()!);
  print("-Комп: 'It is $answer'");
  count++;
  stepsComp++;
  while (answer != fixAns) {
    count++;
    stepsComp++;
    if (answer > fixAns) {
      print('-Пользователь: less');
      max = answer;
      answer = max - (max - min) ~/ 2;
    } else {
      print('-Пользователь: greater ');
      min = answer;
      answer = complexity==1? min: max + (max - min) ~/ 2;
    }
    print("-Комп: 'It is $answer'");
  }
  print(
      "-Пользователь: Yes\n$sepor$sepor\nGot it in $count steps!\n$sepor$sepor\n\n");
  roundUser++;
}

void checkAlorithm(int algorithm) {
  count++;
  if (algorithm == 1) {
    while (answer != fixAns) {
      count++;
      stepsComp++;
      if (answer > fixAns) {
        max = answer;
        answer = max - (max - min) ~/ 2;
      } else {
        min = answer;
        answer = min + (max - min) ~/ 2;
      }
    }
    print("$sepor$sepor\nAlgorithm number $algorithm\n$fixAns in $count steps");
  } else {
    while (answer != fixAns) {
      count++;
      stepsComp++;
      if (answer > fixAns) {
        max = answer;
        answer = max - (max - min) ~/ 2;
      } else {
        min = answer;
        answer = max + (max - min) ~/ 2;
      }
    }
    print(
        "\nAlgorithm number $algorithm\n$fixAns in $count steps\n$sepor$sepor");
  }
}

void stageTwo() {
  List list = [];
  for (int i = 0; i < 100; i++) {
    list.add(Random().nextInt(99) + 1);
  }
  for (int i in list) {
    answer = 100;
    max = 100;
    min = 0;
    count = 0;
    fixAns = i;
    checkAlorithm(1);
    answer = 100;
    max = 100;
    min = 0;
    count = 0;
    checkAlorithm(2);
  }
}

void stageThree() {
  print(
      '\n\n$sepor$sepor\nКомпьютер загадывает число, а пользователь отгадывает.\n$sepor$sepor\n');
  fixAns = Random().nextInt(99) + 1;
  print("-Компьютер загадал число: $fixAns");
  answer = double.parse(stdin.readLineSync()!);
  count++;
  stepsUser++;
  while (fixAns != answer) {
    count++;
    stepsUser++;
    if (answer > fixAns) {
      print("-Компьютер: less");
    } else {
      print("-Компьютер: greater");
    }
    answer = double.parse(stdin.readLineSync()!);
  }
  print(
      "-Компьютер: Yes\n$sepor$sepor\nGot it in $count steps!\n$sepor$sepor\n\n");
  roundComp++;
}

void stageFour() {
  print("\n$sepor$sepor\n\n    ИГРА: УГАДАЙ ЧИСЛО!\n\n$sepor$sepor\n\nВыберите количество раундов(мин-1, макс-10)");
  round = int.parse(stdin.readLineSync()!);
  if(round>10||round==0)return;
  print("Выберите уревень сложости: 1-Опытный игок, 2-Средний игрок");
  complexity = int.parse(stdin.readLineSync()!);
  currentRound++;
  print('$sepor Start GAME $sepor');
  while (currentRound != round + 1) {
    count = 0;
    if (roundUser < currentRound) {
      print("Роунд $currentRound");
      stageOne();
    } else if (roundComp < currentRound) {
      print("Роунд $currentRound");
      stageThree();
    } else {
      if (stepsUser < stepsComp) {
        victoryUser++;
      } else if (stepsUser > stepsComp) {
        victoryComp++;
      } else {
        victoryComp++;
        victoryUser++;
      }
      stepsUser = 0;
      stepsComp = 0;
      currentRound++;
    }
  }
  if (victoryUser > victoryComp) {
    print(
        "$sepor$sepor\n\n  Конец игры\n  Выйграл User со счетом $victoryUser : $victoryComp\n\n$sepor$sepor");
  } else if (victoryComp > victoryUser) {
    print(
        "$sepor$sepor\n\n  Конец игры\n  Выйграл Компьютер со счетом $victoryComp : $victoryUser\n\n$sepor$sepor");
  } else {
    print("$sepor$sepor\n\n  Конец игры\n  Ничья\n\n$sepor$sepor");
  }
}

