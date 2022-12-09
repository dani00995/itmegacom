import 'dart:math';


void main() {
  int playerScore = 0;
  int compScore = 0;
  List<int> dice = [1, 2, 3, 4, 5, 6];
  print('Player tosses first');
  playerScore += tossDice(dice);
  print('Now is computers turn');
  compScore += tossDice(dice);
  if (playerScore > compScore) {
    print('Player won this Round');
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