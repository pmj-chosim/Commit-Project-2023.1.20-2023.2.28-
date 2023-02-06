void main() {
	// initialize list with the same type values
  List l1 = [0, 1, 2, 3, 4, 5];
  print(l1);
  
	// initialize list with different type values
  List l2 = [4,6, 5.7, 'hello', true];
  print(l2);
	
	// use for-in loop to get the items in the list
	for(var item in l2) {
    if(item is int)continue;
    if(item is String )break;
		print(item);
  }
 
 // for(int item in l2) 못함 !! 불가능
  
// for(item in l1){
 //  print(item);
// }   이것도 불가능!! item 선언 안 됐으니
	 
	// use forEach to get the items in the list
	// Good and Bad usage of forEach

	// bad
  l2.forEach((item) {
    print(item);
  });
  
  // good
  l2.forEach(print);
  
  l1.forEach(print);
  
  // bad
  l2.forEach((item) {
    if (item is double) {
      print(item);
    }
  });
  
  // good
  l2.whereType<double>().forEach(print);
}