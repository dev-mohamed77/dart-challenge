import 'dart:io';

// برنامج معرفة كم عشت من الايام

int getYaerOfBirth(){
  print("Enter The Year : ");
  String year = stdin.readLineSync();
  return int.parse(year);
}

int getMonthOfBirth(){
  print("Enter The Month : ");
  String month = stdin.readLineSync();
  return int.parse(month);
}

int getDayOfBirth(){
  print("Enter The Day : ");
  String day = stdin.readLineSync();
  return int.parse(day);
}
void runProgram(){
  var dateFrom = DateTime(getYaerOfBirth() , getMonthOfBirth() , getDayOfBirth());
  var dateTo = DateTime.now();
  var result = dateTo.difference(dateFrom).inDays;
  print("$result Days");
}