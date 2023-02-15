void main() {
	// Call checkTheNull Function
  checkTheNull(null);
}

// Create checkTheNull Function 
void checkTheNull(var val){
  var nullCheck;
	// Use try Statement
  try{
    nullCheck=val;
  }
  
	// Use catch Statement
  catch(e){
    print(e);
  }
  
	// Use finally Statement 
  finally{
  
		// If nullCheck's Value is Null, Print Message Below.
  if(nullCheck==null){
    print('Value is null');
  }
		// Else Print Message Below
    else{
      print('Value : $nullCheck');
    }
    }
 }
