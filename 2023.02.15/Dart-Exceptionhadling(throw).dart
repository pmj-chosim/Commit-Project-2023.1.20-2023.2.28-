void main() {
	// Call mustBeGreaterThanZero() function 
  mustBeGreaterThanZero(0);
  //mustBeGreaterThanZero(1);
}

// Create mustBeGreaterThanZero() function 
void mustBeGreaterThanZero(var val){

	// If the Parameter Value is Less than or Equal to 0 throw exception
  if(val<=0){
    throw Exception('Value must be greater than zero');
  }

}