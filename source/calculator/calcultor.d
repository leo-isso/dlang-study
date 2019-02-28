module calculator.calcultor;
import std.stdio, std.conv, std.string;

void main() {
  
  string choice = selectOption();
  
  switch (choice){

    case ("1"):
      add();
      break;

    case ("2"):
      writefln("GOOD ONE");
      break;

    case ("3"):
      writefln("GOOD ONE");
      break;

    case ("4"):
      writefln("GOOD ONE");
      break;

    case ("5"):
      return;

    default:
      writefln("Not valid, try again!");
      main();
      break;
  }
}

string selectOption(){
  writef("Please choose an operation\n");
  writefln("1.  addition");
  writefln("2.  subtraction");
  writefln("3.  multiplication");
  writefln("4.  division");
  writefln("5.  quit \n");
  const choice = readln.strip.to!string;
  return choice;
}

int[] selectValues(){
  writefln("\nFirst value");
  int a = readln.strip.to!int;
  writefln("\nSecond value");
  int b = readln.strip.to!int;
  return [a, b];
}

int add(){
  int[] values = selectValues();
  int result = values[0] + values[1];  
  writefln("\nResult: %s", result);
  return result;
}