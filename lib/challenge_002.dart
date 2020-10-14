import 'dart:io';
import 'dart:math';
void main(){

  // لعبة اختر رقم عشوائى

  Random random = Random();
  int choises = random.nextInt(20);
  var user;
  print("Enter Your Number: ");

  do{
  user = stdin.readLineSync();
  user = int.parse(user);
  if(user > choises){
  print("Too Heigh");
  }else if(user < choises){
  print("Too Low");
  }
  }while(choises != user);

  print ("The Number is $choises");






  // Random random = Random();
  // List<int> myList = [];
  //
  // List<int> evenNumberList = [];
  // List<int> oddNumberList = [];
  //
  // while (myList.length < 150) {
  // int randomint = random.nextInt(200);
  // if (!myList.contains(randomint)) {
  // myList.add(randomint);
  // }
  // }
  //
  // for (int e in myList) {
  // if (e % 2 == 0) {
  // evenNumberList.add(e);
  // } else {
  // oddNumberList.add(e);
  // }
  // }

}