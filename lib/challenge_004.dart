import 'dart:io';
import 'dart:math';

// برنامج اختيار نكت عشوائيه

int getRandomIndex(int max){
  Random random = Random();
  return random.nextInt(max);
}

List <String> getJokes(){
  return [
  "Last week, Nvidia unveiled the 699 RTX 3080",
  " which promises double the performance of the RTX 2080",
  " for the same price when it releases next Thursday.",
  " Perhaps you’re already sold on that upgrade",
  "but there is one reason you might want to wait",
  "AMD will likely answer with its own competitor",
  " to the RTX 3000 series on October 28th"];
}

void runProgram(){
  List <String> jokes = getJokes();
  int index;
  String inputUser;
  do{
    inputUser = stdin.readLineSync();
    switch(inputUser){
      case "next":
        index = getRandomIndex(jokes.length);
        print(jokes[index]);
        break;
      default:
        break;
    }
  }while(inputUser != "finish");
}