void main() {
  
  ///////////////////Dart 에서는 string도 switch됨!!
	// Declare a variable "n"
  var n='flutter';
	// Implement switch statement
  switch(n){
 
		// If the case is Student, then print and break statement
    case 'Student':
      print(n);
      break;
    
		// If the case is Professor, then print and break statement
    case 'Professor':
      print(n);
      break;
		// If the case is Parents, then print and break statement
    case 'Parents':
      print(n);
      break;
		// Otherwise, just print statement
      default:
      print("no");
      break;
  }
}