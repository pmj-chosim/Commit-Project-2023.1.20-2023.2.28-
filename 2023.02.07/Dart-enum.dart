enum Color {
  blue, red, yellow
}

void main() {
  // Print Color
  print(Color.values);
	// Print Color Using forEach
  Color.values.forEach((v){
    print('${v.index}: $v');
  });
	// Call Color Type Color as Color.blue
  Color color=Color.blue;
  print(color);
  
	// Change Color as Red
  color=Color.red;
  print(color);
  
  switch(color){
    case Color.red:
      print(0);
      break;
    case Color.blue:
     break;
  }
}