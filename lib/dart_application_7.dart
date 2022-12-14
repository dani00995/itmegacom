import 'dart:io';

// import 'package:dart_application_7/dart_application_7.dart'
//     as dart_application_7;

void main(List<String> arguments) {
//   1. Составьте программу, выводящую на экран квадраты чисел от 10 до 20.
  tasck1();

// 2. Составьте программу, котораЯ вычисляет сумму чисел
//от 1 до n.значение n вводится с клавиатуры.
  tasck2();

// 3. В сберкассу на трёхпроцентный вклад положили S рублей.
//Какой станет сумма вклада через N лет.(Данные вводятся с клавиатуры)
  tasck3();

// 4. Даны натуральные числа от 20 до 50.Напечатать те из них,
//которые делятся на 3, но не делятся на 5.
  tasck4();

// 5. Даны натуральные числа от 20 до 50.Напечатать те из них,
//которые делятся на 3, но не делятся на 5.
  tasck4();

// 6.  даны натуральные числа от 35 до 87. Найти и напечатать те из них,
//которые при делении на 7 дают остаток 1, 2 или 5.
  tasck6();

// 7. Даны натуральные числа от 1 до 50. Найти сумму тех из них,
//которые делятся на 5 или на 7.
  tasck7();

// 8. Напечатать те из двузначных чисел которые делятся на 4, но не делятся на 6.
  tasck8();

// 9. Найти сумму чисел от 100 до 200 кратных 17.
  tasck9();

// 10. Составьте программу, которая вычисляет сумму квадратов
// чисел от 1 до введенного вами целого числа N
  tasck10();
}

void tasck1() {
  print("Задача №1");
  for (int i = 10; i < 20; i++) {
    print(i * 2);
  }
}

void tasck2() {
  String? a = stdin.readLineSync();

  if (int.tryParse(a!) == null) {
    print("Введите цифру");
    tasck2();
  } else {
    try {
      int n = int.parse(a);
      for (int i = 1; i < n; i++) {
        print(i);
      }
    } catch (e) {
      print("Введите цифру");
      tasck2();
    }
  }
}

void tasck3() {
  print("Введите сумму");
  String s = stdin.readLineSync()!;
  int iS = int.parse(s);

  print("Введите сумму");
  String y = stdin.readLineSync()!;
  int iY = int.parse(y);
  double procent = iS * 0.03;
  print("Ваша сумма в течение $iY лет состовляет ${(iY * procent) + iS}");
}

void tasck4() {
  print("Задача №4 и 5");
  for (int i = 20; i < 50; i++) {
    if ((i % 3) == 0 && (i % 5) != 0) {
      print(i);
    }
  }
}

void tasck6() {
  print("Задача №6");
  for (int i = 35; i <= 87; i++) {
    if (i % 7 == 1 || i % 7 == 2 || i % 7 == 5) {
      print("$i % 7 = ${i % 7}");
    }
  }
}

void tasck7() {
  print("Задача 7");
  for (int i = 1; i <= 50; i++) {
    if (i % 5 == 0 || i % 7 == 0) {
      print(i);
    }
  }
}

void tasck8() {
  print("Задача 8");
  for (int i = 10; i < 100; i++) {
    if (i % 4 == 0 && i % 6 != 0) {
      print(i);
    }
  }
}

void tasck9() {
  print("Задача 9");
  int answer = 0;
  for (int i = 100; i <= 200; i++) {
    if (i % 17 == 0) {
      answer += i;
      print("${answer - i} + $i = $answer");
    }
  }
}

void tasck10() {
  String input = stdin.readLineSync()!;
  int n = int.parse(input);
  if (n == null) return;
  for (int i = 0; i <= n; i++) {
    print(i * 2);
  }
}
