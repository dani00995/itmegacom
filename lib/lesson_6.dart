void main(List<String> args) {
  print("Задача №1");
//   Задание номер 1
// 1) Возьмем, например, два списка:
// a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
// и напишите программу, которая возвращает список, содержащий
//только общие для них элементы (без дубликатов). Убедитесь, что ваша
//программа работает с двумя списками разного размера.
// Ответ: [1, 2, 3, 5, 8, 13]
  List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List result = [];
  for (var i = 0; i < a.length; i++) {
    for (var j = 0; j < b.length; j++) {
      if (!result.contains(a[i]) && a[i] == b[j]) {
        result.add(a[i]);
      }
    }
  }
  print(result);

  print("Задача №2");
// Задание номер 2
// 2) Допустим, вам дан список, сохраненный в переменной:
  List c = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
// Напишите код Dart, который берет этот список и создает
//новый список, в котором есть только четные элементы этого списка.
// Ответ = [4, 16, 36, 64, 100];
  List resultC = [];
  for (int i = 0; i < c.length; i++) {
    if (c[i].isEven) {
      resultC.add(c[i]);
    }
  }
  print(resultC);

  print("Задача №3");
// Задание номер 3
// 3) Создайте функцию, которая принимает две строки в качестве аргументов и
// возвращает, сколько раз первая строка (один символ) была найдена во второй строке.
// Пример:
// вожу "a" и "dart" ➞ результат = 1
// вожу "c" и "Chamber of secrets" ➞ результат = 1
// вожу "b" и "big fat bubble" ➞ результат = 4

  String a3 = 'a';
  String b3 = 'dart';

  String a3_2 = 'c';
  String b3_2 = 'Chamber of secrets';

  String a3_3 = 'b';
  String b3_3 = 'big fat bubble';

  print(taskThree(a: a3, b: b3));
  print(taskThree(a: a3_2, b: b3_2));
  print(taskThree(a: a3_3, b: b3_3));
}

int taskThree({required String a, required String b}) {
  int counter = 0;

  for (int i = 0; i < b.length; i++) {
    if (a.toLowerCase() == b[i]) {
      counter++;
    }
  }
  return counter;
}
