import 'dart:math';

enum Dice {one, two, three, four, five, six}

void main() {
  Random random = Random();
  int num = random.nextInt(6)+1;
  var dice;
  switch(num) {
    case 1:
      dice = Dice.one;
      break;
    case 2:
      dice = Dice.two;
      break;
    case 3:
      dice = Dice.three;
      break;
    case 4:
      dice = Dice.four;
      break;
    case 5:
      dice = Dice.five;
      break;
    case 6:
      dice = Dice.six;
      break;
  }
  print(dice);
}

