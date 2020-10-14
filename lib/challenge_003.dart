import 'dart:math';
import 'dart:io';

int randomNumber(){
  Random random =Random();
  return random.nextInt(50);
}

int userInput(){
  print("Enter Your Number:");
  String numberUser = stdin.readLineSync();
  return int.parse(numberUser);
}

Map <bool ,String> computerNumber(int userGuess , int computerNumber){
  if (userGuess > computerNumber){
    return {false : "Too High"};
  }else if(userGuess < computerNumber){
    return {false : "Too Low"};
  }else {
    return {true : "You Guessed it $computerNumber"};
  }
}

void runprogram() {
  int computerRandom = randomNumber();
  int user;
  do{
    user = userInput();
    Map<bool , String> resulte = computerNumber(user, computerRandom);
    print(resulte);
  }while( user != computerRandom);
}