import 'dart:io';
import 'dart:math';

void main() {

  // لعبة كارت الكوتشينه

  List <int> card = [1, 2 ,3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List <String> cochinCard = ["Hearts", "Spades", "Clubs", "Diamond"];

  Random random = Random();
  int cardChoises = random.nextInt(12);

  String name;
  switch(cardChoises){
    case 0 :
      name = "Ace";
      break;
    case 10 :
      name = "Jack";
      break;
    case 11:
      name = "Queen";
      break;
    case 12:
      name = "King";
      break;
    default:
      name = card[cardChoises].toString();
  }
  Random rdm = Random();
  int computerChoises = rdm.nextInt(3);


  Map choises = { "Number": name , "Sign": cochinCard[computerChoises]};

  String number = choises["Number"];
  String sign = choises["Sign"];

  print("Welcome^_^ , Your Card is $number $sign ");
}
