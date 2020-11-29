import 'dart:io';
import 'dart:math';


String getPlayerMove() {
  print("Let's play Rock, Paper or Scissors!");
  print("Would you like be: (R)ock, (P)aper, or (S)cissors?");
  String selection = stdin.readLineSync().toUpperCase();
  
  switch (selection) {
    case "R":
      return "Rock";
      break;
    case "P":
      return "Paper";
      break;
    case "S":
      return "Scissors";
      break;
    default: 
      return "Quit";
      break;
  }
}


String getAIMove() {
  Random rand = new Random();
  int move = rand.nextInt(3);  
  
  switch (move) {
    case 0:
      return "Rock";
      break;
    case 1:
      return "Paper";
      break;
    case 2:
      return "Scissors";
      break;
    default:
      break;
  }
}


String whoWon(String playerMove, String AIMove) {
  if (playerMove == AIMove) {  
    return "Tie Let's Play Again";
  } else if (playerMove == "Scissors" && AIMove == "Paper") {
    return "You Win!";
  } else if (playerMove == "Rock" && AIMove == "Scissors") {
    return "You Win!";
  } else if (playerMove == "Paper" && AIMove == "Rock") {
    return "You Win!";
  } else {  
    return "AI Wins!";
  }
}

void main() {
  while(true) {  
    
    String playerMove = getPlayerMove();
    
    if (playerMove == "Quit") {
      return;  
    }
    
    print("You played $playerMove");
    String AIMove = getAIMove();
    print("Computer played $AIMove");
    print(whoWon(playerMove, AIMove));
  }
}
