void main() {
	// Call sub() fuction in print()
  print(sub(8,4));
  print(sub1(8,4));
}

// Declare sub() function with Positional Parameters
dynamic sub(var num1, var num2){
  return '$num1-$num2';
}
dynamic sub1(var num1, var num2){
  return num1-num2;
}
