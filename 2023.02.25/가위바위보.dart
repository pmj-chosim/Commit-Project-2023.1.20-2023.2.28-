//가장 고전적인 게임 가위바위보를 만듦 dart언어 공부 안 한지 한 일주일 됐나..? 그래서 dart 복습겸

import 'dart:io';
import 'dart:math';

void main() {

  print('Let\'s play Rock, Paper, Scissors!');

  while (true) {
    stdout.write('Choose your weapon (rock, paper, or scissors): ');
    String? playerInput = stdin.readLineSync();
    if (playerInput == null) {
      break;
    }

    String playerWeapon = playerInput.trim().toLowerCase();

    if (playerWeapon != 'rock' && playerWeapon != 'paper' && playerWeapon != 'scissors') {
      print('Invalid input. Try again.');
      continue;
    }

    Random random = Random();

    int computerChoice = random.nextInt(3); // 0 = rock, 1 = paper, 2 = scissors
    String computerWeapon = '';

    switch (computerChoice) {
      case 0:
        computerWeapon = 'rock';
        break;
      case 1:
        computerWeapon = 'paper';
        break;
      case 2:
        computerWeapon = 'scissors';
        break;
    }

    print('You chose $playerWeapon. The computer chose $computerWeapon.');

    if (playerWeapon == computerWeapon) {
      print('It\'s a tie!');
    } else if ((playerWeapon == 'rock' && computerWeapon == 'scissors') ||
               (playerWeapon == 'paper' && computerWeapon == 'rock') ||
               (playerWeapon == 'scissors' && computerWeapon == 'paper')) {
      print('You win!');
    } else {
      print('You lose!');
    }

  }
}
