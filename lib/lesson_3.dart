import 'dart:math';

void main(List<String> args) {
//   L1) Пользователь вводит порядковый номер пальца руки. Необходимо показать его название на экран.
// Finger = 1 ➞ “большой палец”
  var userInput = 1;
  if (userInput == 1) {
    print("Задача №1 $userInput палец");
  }
  if (userInput == 2) {
    print("Задача №1 $userInput палец");
  }
  if (userInput == 3) {
    print("Задача №1 $userInput палец");
  }
  if (userInput == 4) {
    print("Задача №1 $userInput палец");
  }
  if (userInput == 5) {
    print("Задача №1 $userInput палец");
  }

// 2) В переменной min лежит число от 0 до 59. Определите в какую четверть часа попадает это число (в первую,
// вторую, третью или четвертую).
//var min = [0..59];
  int min = 59;
  if (min >= 0 && min <= 14) {
    print("Задача №2 -1/4");
  } else if (min >= 15 && min <= 29) {
    print("Задача №2 -2/4");
  } else if (min >= 30 && min <= 44) {
    print("Задача №2 -3/4");
  } else if (min >= 45 && min <= 59) {
    print("Задача №2 -4/4");
  } else {
    print("Задача №2 -Error");
  }

// 3)Переменная lang может принимать 2 значения: ru; en;. Если она имеет значение ru, то в переменную arr
// запишем массив дней недели на русском языке, а если имеет значение en; – то на английском.
  var lang = "ru";
  List<String> list = [];
  if (lang == "ru") {
    list.add("дней недели на русском языке,");
  } else {
    list.add("дней недели на английском языке,");
  }
  print("Задача №3 $lang $list");
// 1)Дана строка, состоящая из символов, например, 'abcde'. Проверьте, что первым символом этой строки является буква 'a'. Если это так - выведите 'да', в противном случае выведите 'нет'.
  String str = 'abcde';
  String checkStr = "a";
  if (str[0].contains(checkStr)) {
    print("Задача №2_1 Да");
  } else {
    print("Задача №2_1 Нет");
  }
// 2)Переменная num может принимать одно из значений: 1, 2, 3 или 4. Если она имеет значение '1', то в переменную result запишем 'зима', если имеет значение '2' – 'лето' и так далее.
  int num = 1;
  if (num == 1) {
    print("Задача №2_2-> Зима");
  }
  if (num == 2) {
    print("Задача №2_2-> Весна");
  }
  if (num == 3) {
    print("Задача №2_2-> лето");
  }
  if (num == 4) {
    print("Задача №2_2-> Осень");
  }

// 3)Если переменная a меньше нуля, то выведите 'Верно', иначе выведите 'Неверно'. Проверьте работу скрипта при a, равном 1, 0, -3.
  var a = Random().nextInt(4) - 3;
  if (a < 0)
    print("Задача №2_3 верно");
  else
    print("Задача №2_3 неверно");

// 4)Дана строка из 6-ти цифр. Проверьте, что сумма первых трех цифр равняется сумме вторых трех цифр. Если это так - выведите 'да', в противном случае выведите 'нет'.
  String strg = "423679";
  int n1 = int.parse(strg[0]);
  int n2 = int.parse(strg[1]);
  int n3 = int.parse(strg[2]);
  int n4 = int.parse(strg[3]);
  int n5 = int.parse(strg[4]);
  int n6 = int.parse(strg[5]);
  int sum1 = n1 + n2 + n3;
  int sum2 = n4 + n5 + n6;
  if (sum1 == sum2)
    print("Задача №2_4 -->да");
  else
    print("Задача №2_4 -->нет");

// 5)Нужно написать условие для действий пешехода при различных сигналах светофора.
// Если сигнал красный, то надо стоять, иначе, если желтый - надо приготовиться, а иначе - можно идти.
  var red = 1;
  var yel = 2;
  var green = 3;
  var svetaforCurrColor = 1;
  if (svetaforCurrColor == red) {
    print("Задача №2_5 горит красный - стоять");
  } else if (svetaforCurrColor == yel) {
    print("Задача №2_5 горит желтый - приготовиться");
  } else {
    print("Задача №2_5 горит зеленный - можно идти");
  }
}
