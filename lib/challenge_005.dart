import 'dart:math';
import 'dart:io';

// برنامج حساب مساحة مستطيل من الطول والعرض

double getWidth(){
  print ("Enter The Width :");
  String width = stdin.readLineSync();
  return double.parse(width);
}

double getHeight(){
  print("Enter The Height :");
  String height = stdin.readLineSync();
  return double.parse(height);
}

double calcoulator(double width , double length){
  return width * length;
}

void runProgram(){
  double width = getWidth();
  double height = getHeight();
  double result = calcoulator(width, height);
  print("The Results are : $result");
}