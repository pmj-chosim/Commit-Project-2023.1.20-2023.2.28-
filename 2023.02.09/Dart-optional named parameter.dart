// Function - Optional Named Parameter

void main() {

	// Call sub() fuction in print()
  print(sub(num2:4, num1:8, num3:7));

}

// Declare sub() function with Optional Named Parameters
dynamic sub({var num1, var num2, var num3}){
  return num1-num2+num3;
}