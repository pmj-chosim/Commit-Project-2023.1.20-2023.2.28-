void main() {
  // Combine Strings
  String name = "Minjin";
  print('My name is' + name);
  print('My name is $name');

  // Quotation marks '' ""
  String s = 'single';
  String d = "double";
  String s1 = "'single'";
  String d1 = '"double"';
  //String d2=""double"" //오류남
  // String s2=''single'';
  print(s);
  print(s1);
  print(d);
  print(d1);

  // String Interpolation
  int num = 10;
  String Interpolation = 'ten is $num';

  // New line
  String n = 'I am' + '\n' + Interpolation;
  print(n);

  // Print symbols
  String de = 'use \\ \'';
}
