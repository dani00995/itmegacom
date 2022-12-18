import 'dart:io';
import 'dart:math';


int userInput = 32;
double i = 100;
double less = 100;
double greater = 0;
int count = 0;

int round = 0;
int currentRound = 0;
int roundUser = 0;
int roundComp = 0;
int spepsUser = 0;
int stepsComp = 0;
int victoryUser = 0;
int victoryComp = 0;
void main(List<String> args) {
  stage1();
  stage2();
  stage3();
  stage4();
}



void stage1() {
  print('GAME N-1');
  print('Выберите число от 0 до 100');
  userInput = int.parse(stdin.readLineSync()!);
  print("Start game!");
  computerGuessGame1();
}

void computerGuessGame1() {
  count++;
  stepsComp++;
  print("-Comp: 'It is $i'");
  String user = stdin.readLineSync()!;
  if (user == 'yes') {
    print("Yes\n\nGot it in $count steps!");
    roundUser++;
    if (round != 0) roundstage4();
    return;
  }
  if (user == 'l') {
    print("less");
    less = i;
    if ((less - greater) % 2 == 0) {
      i = less - ((less - greater) / 2);
    } else {
      i = less - ((less - greater - 1) / 2);
    }
  } else {
    print("greater");
    greater = i;
    if ((less - greater) % 2 == 0) {
      i = greater + ((less - greater) / 2);
    } else {
      i = greater + ((less - greater - 1) / 2);
    }
  }
  computerGuessGame1();
}

void stage2() {
  List randomList = [];
  for (int index = 0; index < 100; index++) {
    randomList.add(Random().nextInt(99) + 1);
  }
  for (int index = 0; index < 100; index++) {
    compilGame2(user: randomList[index]);
  }
}

void compilGame2({required int user}) {
  userInput = user;
  count = 0;
  less = 100;
  greater = 0;
  i = 100;
  double guess() {
    if (i > userInput) {
      less = i;
      if ((less - greater) % 2 == 0) {
        return less - ((less - greater) / 2);
      } else {
        return less - ((less - greater - 1) / 2);
      }
    } else {
      greater = i;
      if ((less - greater) % 2 == 0) {
        return greater + ((less - greater) / 2);
      } else {
        return greater + ((less - greater - 1) / 2);
      }
    }
  }

  do {
    count++;
    if (i == userInput) {
      print('Got $userInput in $count steps ');
      return;
    }
    i = guess();
  } while (i > 0);
}

void stage3() {
  print("Game start\n\nУгадайте число от 0 до 100");
  userInput = Random().nextInt(100);
  print(userInput);
  count = 0;
  userGuessGame3();
}

void userGuessGame3() {
  count++;
  spepsUser++;
  i = double.parse(stdin.readLineSync()!);
  if (i == userInput) {
    print("yes\n\nGot it in $count steps!");
    roundComp++;
    if (round != 0) roundstage4();
    return;
  }
  if (i > userInput) {
    print('less');
  } else {
    print('greater');
  }
  userGuessGame3();
}

void stage4() {
  print("Выберите количество раундов(мин-1, макс-10)");
  round = int.parse(stdin.readLineSync()!);
  currentRound++;
  print(
      '**************************** Start GAME **************************************');
  roundstage4();
}

void roundstage4() {
  if (currentRound == round + 1) {
    if (victoryUser > victoryComp) {
      print(
          "**************************************************\n*\n*  Конец игры\n*  Выйграл User со счетом $victoryUser : $victoryComp\n*\n*************************************************");
    } else if (victoryComp > victoryUser) {
      print(
          "**************************************************\n*\n*  Конец игры\n*  Выйграл Компьютер со счетом $victoryComp : $victoryUser\n*\n**************************************************");
    } else {
      print(
          "**************************************************\n*\n*  Конец игры\n*  Ничья\n*\n**************************************************");
    }
    return;
  }
  if (roundUser < currentRound) {
    count = 0;
    stepsComp = 0;
    print(
        '=====================================================================\n$currentRound Раунд\nПользователь загадывает число, а компьютер угадывает.\nВыберите число от 0 до 100\n=====================================================================');
    userInput = int.parse(stdin.readLineSync()!);
    computerGuessGame1();
  } else if (roundComp < currentRound) {
    count = 0;
    spepsUser = 0;
    print(
        "=====================================================================\n$currentRound Раунд\nКомпьютер загадывает число, а пользователь отгадывает.\n===================================================================== ");
    userInput = Random().nextInt(100);
    print(userInput);
    spepsUser = 0;
    userGuessGame3();
  } else {
    if (spepsUser < stepsComp)
      victoryUser++;
    else if (spepsUser > stepsComp)
      victoryComp++;
    else {
      victoryComp++;
      victoryUser++;
    }
    spepsUser = 0;
    stepsComp = 0;
    currentRound++;
    roundstage4();
  }
}
