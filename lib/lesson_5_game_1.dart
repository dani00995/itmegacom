import 'dart:io';
import 'dart:math';

void main() {
print ('нажмите y чтобы вышло ваше число');
String? b=  stdin.readLineSync();
 int playerScore = 0;
 int compScore = 0;
 List<int> dice = [1, 2, 3, 4, 5, 6];
if (b=="y") {
 
  
  playerScore += tossDice(dice);
} else {
  print ("игра завершена");
} 
print ('нажмите y чтобы вышло число компьютера');
String? c=  stdin.readLineSync();
if (c=="y") {
  
  
  compScore += tossDice(dice);
} else {
  print ("игра завершена");
} 

  if (playerScore > compScore) {
    print('Player won this round');
  } else {
    print('Computer wont this round');
  }
}




int tossDice(List<int> a) {
  int r = Random().nextInt(6 - 0);
  int r2 = Random().nextInt(6 - 0);
  print(a[r]);
  print(a[r2]);
  return a[r] + a[r2];
}