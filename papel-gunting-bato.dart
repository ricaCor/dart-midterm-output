import 'dart:io'; 
import 'dart:math';

void main() {
 int playerScore=0;
 int computerScore=0; 
 String papel= "📄";
 String gunting="✂️";
 String bato="🗿";

print("Welcome to the classic filipino game!");
print("How many rounds do you want to play?");
//input number of rounds
 int rounds = int.parse(stdin.readLineSync());
 for(int i=1; i<=rounds; i++) {  
 String round = i.toString(); 
   print("(P)apel, (G)unting, o (B)ato! What's your pick?");
   print("Round: $i");

//the user will input the letter P-papel B-bato, and G-gunting
 var playerMove  = stdin.readLineSync();
 if (playerMove  == "P") {
      print("You:     $papel");
    } else if (playerMove  == "G") {
      print("You:     $gunting");
    } else if (playerMove  == "B") {
      print("You:     $bato");
    } else {
      print("Invalid input!");
    }

//computer will select random move from list
  Random random = new Random();
    var list = ["P","G","B"];
  
    var computerMove = list[random.nextInt(list.length)];
  
    if (computerMove == "P")
     {
      print("Computer: $papel");
    } 
    else if (computerMove == "G")
     {
      print("Computer:$gunting");
    }
     else if(computerMove=="B")
     {
      print("Computer:$bato");
    }
     else{
     print("invalid input");
    }

// condition for declaring if who will be the winner
 if (playerMove == computerMove) 
  { 
    print("It's a TIE.");
  }
   else if (playerMove == "P" && computerMove == "B")
   {//if papel will cover bato, player will win
   playerScore+=1;
    print("Yehey!You win!");
  }
   else if (playerMove == "G" && computerMove == "P") 
  { // if gunting will cut the papel, player will win
    playerScore+=1;
    print("Yehey!You win!");
  } 
  else if (playerMove == 'B' && computerMove == "G")
   { //if bato will be cut by gunting, player will win
    playerScore+=1;
    print("Yehey!You win!");
  }
   else
   {//the computer will win if none of the move above will appear
    computerScore+=1;
    print("Opss...Computer Wins!");
  }
}
//print the  score for every player and declare the winner after the rounds
      print("==========================================");
      print("   Scores");
      print("Bot: $computerScore You: $playerScore");
      if(playerScore==computerScore){
          print("Winer: It's a tie!");
      }
      else if(playerScore>computerScore){
          print("Winner: You win!)");
      }
      else{
          print("Winner: Computer Wins!:(");
      }
}

